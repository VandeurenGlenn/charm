#include <iostream>
#include <cstdlib>
#include <string>
#include <fstream>
#include <cstdio>
using namespace std;
//0.2.0
int main(int argc, char* args[]) {
	if (argc < 2) {
		cout << "Please specify an application name.\n";
		return 0;	
	}
	cout << "Fetching list...\n";
	system("wget -N raw.github.com/amihart/charm/master/files/list --quiet");	



	cout << "Reading application list...\n";
	string line;
	string package = args[1];	
	bool isInList = false;	
	string packlist = "";
	ifstream list("list");
	while (getline(list,line)) {
		if (line.substr(0,line.length()-1) == package) 
			isInList = true;
		packlist += line.substr(0,line.length()-1) + "\n";
	}
	list.close();

	if (packlist.length() == 0) {
		cout << "Failed to read application list.\n";
		cout << "(Is your current direction ~/Downloads?)\n";
		return 0;
	}

	if (!isInList && package != "search") {
		cout << "Application not found.\n";
	} else if (package == "search") {
		cout << "Available applications:\n" << packlist;
	} else {
		cout << "Downloading installer...\n";
		string cmd = "wget raw.github.com/amihart/charm/master/installers/";
		cmd += package;
		cmd += ".sh --quiet";
		system(cmd.c_str());
		cmd = "sudo chmod +x ./";
		cmd += package;
		cmd += ".sh";
		system(cmd.c_str());
		cmd = "bash ";
		cmd += package;
		cmd += ".sh";
		system(cmd.c_str());
		cmd = package;
		cmd += ".sh";
		remove(cmd.c_str());
	}

	remove("list");
	return 0;
}
