package KwithT;

import com.intuit.karate.junit5.Karate;
import junit.framework.TestCase;

/**
 * Unit test for simple App.
 */
public class AppTest 
    extends TestCase
{

     @Karate.Test
    Karate testPing() {
        return Karate.run("pingtoApi.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testFailLogin() {
        return Karate.run("postFailLogin.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testLogin() {
        return Karate.run("postLogin.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testBooking() {
        return Karate.run("Booking.feature").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testListBooking() {
        return Karate.run("getListofBooking.feature").relativeTo(getClass());
    }

     
    @Karate.Test
    Karate testgetBooking() {
        return Karate.run("getBooking.feature").relativeTo(getClass());
    }
   
    @Karate.Test
    Karate testfaildeleteBooking() {
        return Karate.run("failDeleteBooking.feature").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate testdeleteBooking() {
        return Karate.run("deleteBooking.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testModifyBooking() {
        return Karate.run("ModifyBooking.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testIncompleteBooking() {
        return Karate.run("postBookingIncompleteData.feature").relativeTo(getClass());
    }
}
