const getSleepHours = day => {
    switch(day.toLowerCase()){
        case 'monday':
            return 8
            
        case 'tuesday':
            return 7
            
        case 'wednesday':
            return 8
            
        case 'thursday':
            return 7
            
         case 'friday':
            return 8
            
         case 'saturday':
            return 8
            
         case 'sunday':
            return 7
            
        default :
           return "Error!"      
    }
    
}; 
const getActualSleepHours = () => {
    return getSleepHours('Monday')+ getSleepHours ('tuesday')+ getSleepHours('wednesday') + getSleepHours('thursday') + getSleepHours ('friday') + 
    getSleepHours('saturday')+ getSleepHours ('sunday');
   
};
const getIdealSleepHours = () => {

    const idealHours = 9;
    return idealHours * 7;
};
const calculateSleepDebt = () => {
 const actualSleepHours= getActualSleepHours();
 const idealSleepHours = getIdealSleepHours();
 if (actualSleepHours === idealSleepHours){
   console.log ( 'User got the perfect amount of sleep');
 }
 if (actualSleepHours > idealSleepHours){
    console.log (`The user got more sleep than needed.User needs ${actualSleepHours- idealSleepHours} fewer hours`);
 }
 if (actualSleepHours < idealSleepHours){
    console.log ( `The user should get some rest. User needs ${ idealSleepHours - actualSleepHours} additinal hours`);
 }
};
calculateSleepDebt();




    


