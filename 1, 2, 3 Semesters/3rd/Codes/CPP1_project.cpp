#include <iostream>
#include <windows.h>
using namespace std;
struct data{
	int sec_st[2];
    int sec_end[2];
    string classs[2];
    string subject;
	string semester;
	string teachers;
	};

class rtime{
	public:
    int week=1;
	string Day;
	int am_pm=0;
	
	data sems[136]={{{28800, 379800}, {34200, 385200}, {"Lab-1", "CR-6"}, "Commputer Programming", "2nd-Semester(a)", "Dr. Athar Javed Sethi"},
	{{34200, }, {41400, }, {"CR-3", }, "Pakistan Studies", "2nd-Semester(a)", "Mr. Sajid Malik"},
	{{45000, 212400}, {50400, 217800}, {"CR-2", "CR-3"}, "Circuit and System", "2nd-Semester(a)", "Dr. Zahid Wadood Mufti"},
	{{50400, }, {61200, }, {"MP-Lab", }, "EDG-Lab","2nd-Semester(a)", "Engr. Abid Hussain"},
	{{131400, }, {142200, }, {"EE-Lab", }, "Circuit and System-Lab", "2nd-Semester(a)", "Engr. Faiz Ullah"},
	{{201600, }, {212400, }, {"Lab-1", }, "Computer Programming-Lab", "2nd-Semester(a)", "Engr. Abdullah Hamid"},
	{{217800, 374400}, {223200, 379800}, {"CR-3", "CR-3"}, "Differential Equations", "2nd-Semester(a)", "Dr. Atta Ur Rehman"},
	{{288000, }, {295200, }, {"MP-Lab", }, "EDG-Theory", "2nd Semester(a)", "Engr. Usman"},
	{{304200, }, {310800, }, {"CR-6", }, "CPS", "2nd Semester(a)", "Engr. Yasir Saleem Afridi"},
	
	{{115200, 385200}, {120600, 390600}, {"Lab-1", "CR-6"}, "Commputer Programming", "2nd-Semester(b)", "Dr. Athar Javed Sethi"},
	{{304200, }, {311400, }, {"CR-3", }, "Pakistan Studies", "2nd-Semester(b)", "Mr. Sajid Malik"},
	{{34200, 201600}, {39600, 207000}, {"CR-2", "CR-3"}, "Circuit and System", "2nd-Semester(b)", "Dr. Zahid Wadood Mufti"},
	{{374400, }, {385200, }, {"EE-Lab", }, "EDG-Lab","2nd-Semester(b)", "Engr. Abid Hussain"},
	{{120600, }, {131400, }, {"EE-Lab", }, "Circuit and System-Lab", "2nd-Semester(b)", "Engr. Faiz Ullah"},
	{{212400, }, {223200, }, {"Lab-1", }, "Computer Programming-Lab", "2nd-Semester(b)", "Engr. Abdullah Hamid"},
	{{207000, 298800}, {212400, 304200}, {"CR-2", "CR-4"}, "Differential Equations", "2nd-Semester(b)", "Dr. Atta Ur Rehman"},
	{{136800, }, {144000, }, {"MP-Lab", }, "EDG-Theory", "2nd Semester(b)", "Engr. Usman"},
	{{39600, }, {46800, }, {"CR-6", }, "CPS", "2nd Semester(b)"},
	
	{{131400, 374400}, {136800, 379800}, {"Lab-1", "CR-6"}, "Commputer Programming", "2nd-Semester(c)", "Dr. Athar Javed Sethi"},
	{{379800, }, {387000, }, {"CR-3", }, "Pakistan Studies", "2nd-Semester(c)", "Mr. Sajid Malik"},
	{{28800, 126000}, {34200, 131400}, {"CR-3", "CR-4"}, "Circuit and System", "2nd-Semester(c)", "Dr. Zahid Wadood Mufti"},
	{{223200, }, {234000, }, {"MP-Lab", }, "EDG-Lab","2nd-Semester(c)", "Engr. Abid Hussain"},
	{{298800, }, {309600, }, {"EE-Lab", }, "Circuit and System-Lab", "2nd-Semester(b)", "Engr. Faiz Ullah"},
	{{39600, }, {50400, }, {"Lab-1", }, "Computer Programming-Lab", "2nd-Semester(c)", "Engr. Abdullah Hamid"},
	{{293400, 201600}, {300600, 207000}, {"CR-4", "CR-4"}, "Differential Equations", "2nd-Semester(c)", "Dr. Atta Ur Rehman"},
	{{50400, }, {57600, }, {"CR-6", }, "EDG-Theory", "2nd Semester(c)", "Engr. Usman"},
	{{208800, }, {216000, }, {"Lab-2", }, "CPS", "2nd Semester(c)", "Engr. Yasir Saleem Afridi"},
	
	
	{{34200, 131400}, {39600, 93600}, {"CR-7", "CR-5"}, "PME", "Semester 4(a)", "Dr. Amad Khalil"},
	{{39600, 217800}, {45000, 223200}, {"CR-8", "CR-7"}, "Operating System", "Semester 4(a)", "Dr. Tariq Kamal"},
	{{115200}, {126000, }, {"Lab-2",}, "OS-Lab", "Semester 4(a)", "Engr. Mian Ibad Ali Shah"},
	{{126000, 212400}, {131400, 217800}, {"CR-3", "CR-5"}, "Electronic Circuits", "Semester 4(a)", "Dr. Arbaab Masood"},
	{{201600}, {212400}, {"DSP-Lab", }, "SS-Lab", "Semester 4(a)", "Dr. Durr-e-Nayab"},
	{{288000}, {298800}, {"EE-Lab"}, "EC-Lab", "Semester 4(a)", "Engr. Abdullah Hamid"},
	{{298800, 379800}, {304200, 385200}, {"Lab-2", "Lab-2"}, "Data Structures and Algorithms", "Semester 4(a)", "Dr. Nasru Minallah"},
	{{304200, 385200}, {309600, 390600}, {"CR-5", "CR-5"}, "Signals and Systems", "Semester 4(a)", "Dr. Nasir Ahmad"},
	{{309600}, {320400}, {"CR-7", }, "DSA-Lab", "Semester 4(a)", "Dr. Khurram Shehzad Khattak"},
	
	{{39600, 120600}, {45000, 126000}, {"CR-5", "CR-5"}, "PME", "Semester 4(b)", "Dr. Amad Khalil"},
	{{45000, 207000}, {50400, 212400}, {"CR-8", "CR-7"}, "Operating System", "Semester 4(b)", "Dr. Tariq Kamal"},
	{{126000}, {136800, }, {"Lab-2",}, "OS-Lab", "Semester 4(b)", "Engr. Mian Ibad Ali Shah"},
	{{115200, 201600}, {120600, 207000}, {"CR-3", "CR-5"}, "Electronic Circuits", "Semester 4(b)", "Dr. Arbaab Masood"},
	{{212400}, {223200}, {"DSP-Lab", }, "SS-Lab", "Semester 4(b)", "Dr. Durr-e-Nayab"},
	{{50400}, {61200}, {"EE-Lab"}, "EC-Lab", "Semester 4(b)", "Engr. Abdullah Hamid"},
	{{309600, 396000}, {315000, 401400}, {"Lab-2", "Lab-2"}, "Data Structures and Algorithms", "Semester 4(b)", "Dr. Nasru Minallah"},
	{{293400, 379800}, {298800, 385200}, {"CR-5", "CR-5"}, "Signals and Systems", "Semester 4(b)", "Dr. Nasir Ahmad"},
	{{398800}, {309600}, {"CR-7", }, "DSA-Lab", "Semester 4(b)", "Dr. Khurram Shehzad Khattak"},
	
	{{45000, 126000}, {50400, 131400}, {"CR-5", "CR-5"}, "PME", "Semester 4(c)", "Dr. Amad Khalil"},
	{{50400, 212400}, {55800, 217800}, {"CR-8", "CR-7"}, "Operating System", "Semester 4(c)", "Dr. Tariq Kamal"},
	{{136800,}, {147600, }, {"Lab-2",}, "OS-Lab", "Semester 4(c)", "Engr. Mian Ibad Ali Shah"},
	{{120600, 207000}, {126000, 212400}, {"CR-3", "CR-5"}, "Electronic Circuits", "Semester 4(c)", "Dr. Arbaab Masood"},
	{{223200}, {234000}, {"DSP-Lab", }, "SS-Lab", "Semester 4(c)", "Dr. Durr-e-Nayab"},
	{{28800}, {39600}, {"EE-Lab"}, "EC-Lab", "Semester 4(c)", "Engr. Abdullah Hamid"},
	{{304200, 385200}, {309600, 390600}, {"Lab-2", "Lab-2"}, "Data Structures and Algorithms", "Semester 4(b)", "Dr. Nasru Minallah"},
	{{298800, 374400}, {304200, 379800}, {"CR-5", "CR-5"}, "Signals and Systems", "Semester 4(c)", "Dr. Nasir Ahmad"},
	{{288000}, {298800}, {"CR-7", }, "DSA-Lab", "Semester 4(c)", "Dr. Khurram Shehzad Khattak"},
	
	
	
	{{34200, 120600}, {39600, 126000}, {"CR-6", "DSP-Lab"}, "MBSD", "Semester 6(a)", "Dr. Bilal Habib"},
	{{43200, }, {50400,}, {"Lab-2", }, "DBMS-Lab", "Semester 6(a)", "Dr. Muniba Ashfaq"},
	{{115200, 385200}, {120600, 390600}, {"DSP-Lab", "MP-Lab"}, "Digital Systtem Design", "Semester 6(a)", "Engr. Rehmat Ullah"},
	{{126000, 304200}, {131400, 309600}, {"Lab-1", "Lab-1"}, "Database and Management System", "Semester 6(a)", "Dr. Summayea Salahuddin"},
	{{131400, 207000}, {136800, 212400}, {"CR-6", "CR-6"}, "Technical Writing", "Semester 6(a)", "Engr. Naina Said"},
	{{201600, 298800}, {207000, 304200}, {"CR-6","DSP-Lab"}, "Data Communication and Network", "Semester 6(a)", "Engr. Ihsan Ul Haq"},
	{{212400,}, {223200, }, {"MP-Lab",}, "MBSD-Lab", "Semester 6(a)", "Dr. Abeer Irfan"},
	{{288000, }, {298800, }, {"DSP-Lab", }, "DSD-Lab", "Semester 6(a)", "Engr. Madiha Sher"},
	{{374400}, {385200}, {"Lab-1", }, "DCN-Lab", "Semester 6(a)", "Engr. Faiz Ullah"},
	
	{{50400, 115200}, {55800, 120600}, {"DSP-Lab", "CR-6"}, "MBSD", "Semester 6(b)", "Dr. Bilal Habib"},
	{{223200, }, {234800,}, {"Lab-2", }, "DBMS-Lab", "Semester 6(b)", "Dr. Muniba Ashfaq"},
	{{131400, 396000}, {136800, 401400}, {"DSP-Lab", "MP-Lab"}, "Digital Systtem Design", "Semester 6(b)", "Engr. Rehmat Ullah"},
	{{120600, 298800}, {126000, 304200}, {"Lab-1", "CR-6"}, "Database and Management System", "Semester 6(b)", "Dr. Summayea Salahuddin"},
	{{126000, 212400}, {131400, 217800}, {"CR-6", "CR-6"}, "Technical Writing", "Semester 6(b)", "Engr. Naina Said"},
	{{304200, 385200}, {309600, 390600}, {"DSP-Lab", "CR_6"}, "Data Communication and Network", "Semester 6(b)", "Engr. Ihsan Ul Haq"},
	{{39600,}, {50400, }, {"MP-Lab",}, "MBSD-Lab", "Semester 6(b)", "Dr. Abeer Irfan"},
	{{374400, }, {385200, }, {"DSP-Lab", }, "DSD-Lab", "Semester 6(b)", "Engr. Madiha Sher"},
	{{374400}, {385200}, {"Lab-1", }, "DCN-Lab", "Semester 6(b)", "Engr. Faiz Ullah"},
	
	{{28800, 131400}, {34200, 136800}, {"CR-6", "MP-Lab"}, "MBSD", "Semester 6(c)", "Dr. Bilal Habib"},
	{{50400, }, {61200,}, {"Lab-2", }, "DBMS-Lab", "Semester 6(c)", "Dr. Muniba Ashfaq"},
	{{126000, 374400}, {131400, 379800}, {"DSP-Lab", "Lab-2"}, "Digital and Systtem Design", "Semester 6(c)", "Engr. Rehmat Ullah"},
	{{115200, 293400}, {115200, 298800}, {"MP-Lab-1", "CR-6"}, "Database Management System", "Semester 6(c)", "Dr. Summayea Salahuddin"},
	{{120600, 217800}, {126000, 223200}, {"CR-6", "CR-6"}, "Technical Writing", "Semester 6(c)", "Engr. Laiq Hasan"},
	{{207000, 379800}, {212400, 385200}, {"MP-Lab","DSP-Lab"}, "Data Communication and Network", "Semester 6(c)", "Engr. Ihsan Ul Haq"},
	{{298800,}, {309600, }, {"MP-Lab",}, "MBSD-Lab", "Semester 6(c)", "Dr. Abeer Irfan"},
	{{385200, 396000}, {390600, 401400}, {"DSP-Lab", "DSP-Lab"}, "DSD-Lab", "Semester 6(c)", "Engr. Madiha Sher"},
	{{223200}, {234000}, {"Lab-1", }, "DCN-Lab", "Semester 6(c)", "Engr. Faiz Ullah"},
	
	
	{{28800, 207000}, {34200, 212400}, {"CR-2", "CR-4"}, "Web Engineering", "Semester 8(a)", "Engr. Madeeha Mushtaq"},
	{{34200, 126000}, {39600, 131400}, {"CR-4", "CR-7"}, "Engineering Project Management", "Semester 8(a)", "Dr. Samad Baseer Khan"},
	{{39600, 120600}, {45000, 126000}, {"CR-5", "MP-Lab"}, "Digital Image Processing", "Semester 8(a)", "Dr. Salman Ahmad"},
	{{45009, }, {55800, }, {"CR-7", }, "WE-Lab", "Semester 8(a)", "Engr. Mian Ibad Ali Shah"},
	{{374400,}, {390600,}, {" ", " "}, "Final Year Project", "Semester 8(a)", "Dr. Athar Javed Sethi"},
	{{288000,}, {298800,}, {"Lab-2",}, "Wireless Commication", "Semester 8(a)", "Dr. Amad Khalil"},
	
	{{34200, 115200}, {39600, 120600}, {"CR-2", "CR-2"}, "Web Engineering", "Semester 8(b)", "Engr. Madeeha Mushtaq"},
	{{39600, 136800}, {45000, 142200}, {"CR-2", "CR-7"}, "Engineering Project Management", "Semester 8(b)", "Dr. Samad Baseer Khan"},
	{{28800, 212400}, {34200, 217800}, {"DSP-Lab", "MP-Lab"}, "Digital Image Processing", "Semester 8(b)", "Dr. Salman Ahmad"},
	{{223200, }, {234000, }, {"CR-6", }, "WE-Lab", "Semester 8(b)", "Engr. Mian Ibad Ali Shah"},
	{{374400,}, {390600,}, {" ", " "}, "Final Year Project", "Semester 8(b)", "Dr. Athar Javed Sethi"},
	{{288000,}, {298800,}, {"Lab-2",}, "Wireless Commication", "Semester 8(b)", "Dr. Amad Khalil"},
	
	{{120600, 201600}, {126000, 207000}, {"CR-2", "CR-2"}, "Web Engineering", "Semester 8(c)", "Engr. Madeeha Mushtaq"},
	{{45000, 131400}, {50400, 136800}, {"CR-4", "CR-7"}, "Engineering Project Management", "Semester 8(c)", "Dr. Samad Baseer Khan"},
	{{28800, 212400}, {34200, 217800}, {"DSP-Lab", "MP-Lab"}, "Digital Image Processing", "Semester 8(c)", "Dr. Salman Ahmad"},
	{{304200, }, {315000, }, {"CR-8", }, "WE-Lab", "Semester 8(c)", "Engr. Mian Ibad Ali Shah"},
	{{374400,}, {390600,}, {" ", " "}, "Final Year Project", "Semester 8(c)", "Dr. Athar Javed Sethi"},
	{{288000,}, {298800,}, {"Lab-2",}, "Wireless Commication", "Semester 8(c)", "Dr. Amad Khalil"},
	
	};

	

	rtime(int hor, int mn, int sc, int dy, int seconds)
		 {
			for(;;)
			{
                seconds++;
				system("cls");
				cout<<"Week: "<<week<<"                "<<Day<<"------------"<<hor<<" : "<<mn<<" : "<<sc<<endl<<endl;
	    		for(int i=0; i<136; i++)
       			{
					for(int j=0; j<2; j++)
					{

						if(seconds>=sems[i].sec_st[j] && seconds<=sems[i].sec_end[j])
						{
							cout<<"Class: "<<sems[i].classs[j]<<endl;
							cout<<"Subject: "<<sems[i].subject<<endl;
							cout<<"Semester: "<<sems[i].semester<<endl;
							cout<<"Teacher: "<<sems[i].teachers<<endl<<endl;
							
						}
					}
				}
				for(int k=0; k<=136; k++)
							{
								for(int l=0; l<2; l++)
								{
									if(seconds<sems[k].sec_st[l] && seconds>=sems[k].sec_st[l]-3600)
									{
										cout<<"Next class of "<<sems[k].semester<<" will be in "<<sems[k].classs[l]<<" in "<<
										(sems[k].sec_st[l]-seconds)/60<<" min"<<endl;
									}		
								}
							}
	            if(seconds>=518400)
	            {
	                week++;
	                seconds=0;
	                dy=0;
	            }
	            if(hor>=12)
	            {
	                hor=0;
	                am_pm++;
	            }
	
				Sleep(900);
				sc++;
				if(sc>=60)
				{
					sc=0;
					mn++;
				}
				if(mn>=60)
				{
					mn=0;
					hor++;
				}
				if(am_pm>=2)
				{
					am_pm=0;
					dy++;
				}
	
		 		if(dy == 1)
	        		Day =  "Monday";
	    		else if(dy == 2)
	        		Day =  "Tuesday";
	  	  		else if(dy == 3)
	        		Day =  "Wednesday";
	    		else if(dy == 4)
	       			Day =  "Thursday";
	    		else if(dy == 5)
	       			Day = "Friday";
	       		else if(dy == 6)
	       			Day =  "Saturday";
	    		else if(dy == 7)
	       			Day = "Sunday";
			}

	 }
};


int main()
{
    int dy;
	int hor;
	int mn;
	int sc;


	cout<<"Enter time in order  'day, hour, minute, second': ";
    cin>>dy>>hor>>mn>>sc;
	int seconds=(dy-1)*86400+hor*3600+mn*60+sc*1;

	rtime func(hor, mn, sc, dy, seconds);
}