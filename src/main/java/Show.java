
class showS1T1 extends Movie implements screen1, timeslot1{
	int booked;
	
	void reset(){
		booked=0;
	}
	
	boolean bookNew(int num){
		if(booked+num>capacity){
			return false;
		}
		else{
			booked+=num;
			return true;
		}
	}
	
	showS1T1 (String Mtitle, String Mgenre, int Mduration){
		title = Mtitle;;
		genre = Mgenre;
		duration = Mduration;
	}
}

class showS1T2 extends Movie implements screen1, timeslot2{
	int booked;
	
	void reset(){
		booked=0;
	}
	
	boolean bookNew(int num){
		if(booked+num>capacity){
			return false;
		}
		else{
			booked+=num;
			return true;
		}
	}
	
	showS1T2(String Mtitle, String Mgenre, int Mduration){
		title = Mtitle;;
		genre = Mgenre;
		duration = Mduration;
	}
}

class showS1T3 extends Movie implements screen1, timeslot3{
	int booked;
	
	void reset(){
		booked=0;
	}
	
	boolean bookNew(int num){
		if(booked+num>capacity){
			return false;
		}
		else{
			booked+=num;
			return true;
		}
	}
	
	showS1T3(String Mtitle, String Mgenre, int Mduration){
		title = Mtitle;;
		genre = Mgenre;
		duration = Mduration;
	}
}

class showS2T1 extends Movie implements screen2, timeslot1{
	int booked;
	
	void reset(){
		booked=0;
	}
	
	boolean bookNew(int num){
		if(booked+num>capacity){
			return false;
		}
		else{
			booked+=num;
			return true;
		}
	}
	
	showS2T1(String Mtitle, String Mgenre, int Mduration){
		title = Mtitle;;
		genre = Mgenre;
		duration = Mduration;
	}
}

class showS2T2 extends Movie implements screen2, timeslot2{
	int booked;
	
	void reset(){
		booked=0;
	}
	
	boolean bookNew(int num){
		if(booked+num>capacity){
			return false;
		}
		else{
			booked+=num;
			return true;
		}
	}
	
	showS2T2(String Mtitle, String Mgenre, int Mduration){
		title = Mtitle;;
		genre = Mgenre;
		duration = Mduration;
	}
}

class showS2T3 extends Movie implements screen2, timeslot3{
	int booked;
	
	void reset(){
		booked=0;
	}
	
	boolean bookNew(int num){
		if(booked+num>capacity){
			return false;
		}
		else{
			booked+=num;
			return true;
		}
	}
	
	showS2T3(String Mtitle, String Mgenre, int Mduration){
		title = Mtitle;;
		genre = Mgenre;
		duration = Mduration;
	}
}

class showS3T1 extends Movie implements screen3, timeslot1{
	int booked;
	
	void reset(){
		booked=0;
	}
	
	boolean bookNew(int num){
		if(booked+num>capacity){
			return false;
		}
		else{
			booked+=num;
			return true;
		}
	}
	
	showS3T1(String Mtitle, String Mgenre, int Mduration){
		title = Mtitle;;
		genre = Mgenre;
		duration = Mduration;
	}
}

class showS3T2 extends Movie implements screen3, timeslot2{
	int booked;
	
	void reset(){
		booked=0;
	}
	
	boolean bookNew(int num){
		if(booked+num>capacity){
			return false;
		}
		else{
			booked+=num;
			return true;
		}
	}
	
	showS3T2(String Mtitle, String Mgenre, int Mduration){
		title = Mtitle;
		genre = Mgenre;
		duration = Mduration;
	}
}

class showS3T3 extends Movie implements screen3, timeslot3{
	int booked;
	
	void reset(){
		booked=0;
	}
	
	boolean bookNew(int num){
		if(booked+num>capacity){
			return false;
		}
		else{
			booked+=num;
			return true;
		}
	}
	
	showS3T3(String Mtitle, String Mgenre, int Mduration){
		title = Mtitle;
		genre = Mgenre;
		duration = Mduration;
	}
}