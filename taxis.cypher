/*  Clear All   */

MATCH (n) DETACH DELETE n;


/* Create Car Collections */

CREATE (f:Fleet {Name: "Fleet"}), (a:Available {Name: "Available"})<-[:subset]-(f) , (b:Busy {Name: "Busy"})<-[:subset]-(f) , (m:Maintenance {Name: "Maintenance"})<-[:subset]-(f) , (o:OffDuty {Name: "OffDuty"})<-[:subset]-(f), (r:Retired {Name: "Retired"})<-[:subset]-(f);

/* Create Drivers Collections */

CREATE (d:Drivers {Name: "Drivers"}) ;

/* Create 10 Cars , 10 Drivers, Connect Cars to Available Collections, Connect Cars to individual History Collection, Connect Cars to individual Location node, Connect Driver to Drivers Collection */

MATCH (fc:Fleet {Name: "Fleet"}), (ac:Available {Name: "Available"}), (dc:Drivers {Name: "Drivers"})
CREATE  (d1:Driver {Name: "Albert", ID: "S12345678N", Licence: "SG144445578", Phone: "443344331" })-[:car]->(c1:Car { Plate: "ABC-1234", Make: "Toyota", Model:"Prius", Year: 2022, Capacity: 4, Color: "White"})-[:driver]->(d1), (c1)<-[:in]-(ac), (d1)<-[:in]-(dc) , (c1)-[:history]->(:History {Name: "History"}), (c1)-[:location]->(:Loc {Name: "Location", Lat: 00.000000, Lon: 00.000000 , Time: "00:00:00"}),
        (d2:Driver {Name: "Brandon", ID: "S84765968N", Licence: "SG454435548", Phone: "944453321" })-[:car]->(c2:Car { Plate: "ABC-5678", Make: "Honda", Model:"Vezel", Year: 2021, Capacity: 4, Color: "Red"})-[:driver]->(d2), (c2)<-[:in]-(ac), (d2)<-[:in]-(dc) , (c2)-[:history]->(:History {Name: "History"}), (c2)-[:location]->(:Loc {Name: "Location", Lat: 00.000000, Lon: 00.000000 , Time: "00:00:00"}),
        (d3:Driver {Name: "Charles", ID: "S324538736N", Licence: "SG35664433", Phone: "997766544" })-[:car]->(c3:Car { Plate: "ABD-1234", Make: "Toyota", Model:"Corolla", Year: 2023, Capacity: 4, Color: "Blue"})-[:driver]->(d3), (c3)<-[:in]-(ac), (d3)<-[:in]-(dc) , (c3)-[:history]->(:History {Name: "History"}), (c3)-[:location]->(:Loc {Name: "Location", Lat: 00.000000, Lon: 00.000000 , Time: "00:00:00"}),
        (d4:Driver {Name: "Donald", ID: "S67828333N", Licence: "SG876443334", Phone: "944455541" })-[:car]->(c4:Car { Plate: "ABD-5678", Make: "Toyota", Model:"C-HR", Year: 2019, Capacity: 4, Color: "Green"})-[:driver]->(d4), (c4)<-[:in]-(ac), (d4)<-[:in]-(dc) , (c4)-[:history]->(:History {Name: "History"}), (c4)-[:location]->(:Loc {Name: "Location", Lat: 00.000000, Lon: 00.000000 , Time: "00:00:00"}),
        (d5:Driver {Name: "Eduard", ID: "S98376432N", Licence: "SG865434938", Phone: "955445551" })-[:car]->(c5:Car { Plate: "ABE-1234", Make: "Toyota", Model:"Prius", Year: 2020, Capacity: 4, Color: "White"})-[:driver]->(d5), (c5)<-[:in]-(ac), (d5)<-[:in]-(dc) , (c5)-[:history]->(:History {Name: "History"}), (c5)-[:location]->(:Loc {Name: "Location", Lat: 00.000000, Lon: 00.000000 , Time: "00:00:00"}),
        (d6:Driver {Name: "Frank", ID: "S25984432N", Licence: "SG14564336", Phone: "909876665" })-[:car]->  (c6:Car { Plate: "ABE-5678", Make: "Honda", Model:"Freed", Year: 2022, Capacity: 4, Color: "Black"})-[:driver]->(d6), (c6)<-[:in]-(ac), (d6)<-[:in]-(dc) , (c6)-[:history]->(:History {Name: "History"}), (c6)-[:location]->(:Loc {Name: "Location", Lat: 00.000000, Lon: 00.000000 , Time: "00:00:00"}),
        (d7:Driver {Name: "Gilbert", ID: "S093983333N", Licence: "SG94877448", Phone: "55446773" })-[:car]->(c7:Car { Plate: "ABF-1234", Make: "Toyota", Model:"C-HR", Year: 2021, Capacity: 4, Color: "Yellow"})-[:driver]->(d7), (c7)<-[:in]-(ac), (d7)<-[:in]-(dc) , (c7)-[:history]->(:History {Name: "History"}), (c7)-[:location]->(:Loc {Name: "Location", Lat: 00.000000, Lon: 00.000000 , Time: "00:00:00"}),
        (d8:Driver {Name: "Herbertt", ID: "S763663638N", Licence: "SG4454433", Phone: "484747443" })-[:car]->(c8:Car { Plate: "ABF-5678", Make: "Honda", Model:"Civic", Year: 2019, Capacity: 4, Color: "Red"})-[:driver]->(d8), (c8)<-[:in]-(ac), (d8)<-[:in]-(dc) , (c8)-[:history]->(:History {Name: "History"}), (c8)-[:location]->(:Loc {Name: "Location", Lat: 00.000000, Lon: 00.000000 , Time: "00:00:00"}),
        (d9:Driver {Name: "Ingrid", ID: "S18487473N", Licence: "SG55678943", Phone: "998474731" })-[:car]->(c9:Car { Plate: "ABG-1234", Make: "Toyota", Model:"Sienna", Year: 2022, Capacity: 4, Color: "Blue"})-[:driver]->(d9), (c9)<-[:in]-(ac), (d9)<-[:in]-(dc) , (c9)-[:history]->(:History {Name: "History"}), (c9)-[:location]->(:Loc {Name: "Location", Lat: 00.000000, Lon: 00.000000 , Time: "00:00:00"}),
        (d10:Driver {Name: "Juliet", ID: "S17477328N", Licence: "SG12379744", Phone: "998474744" })-[:car]->(c10:Car { Plate: "ABG-5678", Make: "Toyota", Model:"Hilux", Year: 2023, Capacity: 4, Color: "White"})-[:driver]->(d10), (c10)<-[:in]-(ac), (d10)<-[:in]-(dc) , (c10)-[:history]->(h:History {Name: "History"}), (c10)-[:location]->(:Loc {Name: "Location", Lat: 00.000000, Lon: 00.000000 , Time: "00:00:00"}) ;

/* Create Passengers Collection */

CREATE (ac:Passengers {Name: "Passengers"}) ;

/* Create 11 Passengers, Connect Passenger to individual History Collection, Conenct Passenger to Pasengers Collection   */

Match (pc:Passengers)
CREATE  (pc)-[:in]->(p1:Passenger {Name: "Antonio", Phone: "23456683" })-[:history]->(:History {Name: "History"}),
        (pc)-[:in]->(p2:Passenger {Name: "Benson", Phone: "40985343" })-[:history]->(:History {Name: "History"}),
        (pc)-[:in]->(p3:Passenger {Name: "Cleber", Phone: "56230987" })-[:history]->(:History {Name: "History"}),
        (pc)-[:in]->(p4:Passenger {Name: "David", Phone: "29837442" })-[:history]->(:History {Name: "History"}),
        (pc)-[:in]->(p5:Passenger {Name: "Ernest", Phone: "89207651" })-[:history]->(:History {Name: "History"}),
        (pc)-[:in]->(p6:Passenger {Name: "Frank", Phone: "78383822" })-[:history]->(:History {Name: "History"}),
        (pc)-[:in]->(p7:Passenger {Name: "Gunter", Phone: "30982321" })-[:history]->(:History {Name: "History"}),
        (pc)-[:in]->(p8:Passenger {Name: "Herber", Phone: "78323862" })-[:history]->(:History {Name: "History"}),
        (pc)-[:in]->(p9:Passenger {Name: "Igor", Phone: "40989221" })-[:history]->(:History {Name: "History"}),
        (pc)-[:in]->(p10:Passenger {Name: "John", Phone: "94003822" })-[:history]->(:History {Name: "History"}),
        (pc)-[:in]->(p11:Passenger {Name: "Karl", Phone: "820042321" })-[:history]->(:History {Name: "History"});


/* Create Booking Collections */

CREATE (b:Bookings {Name: "Bookings"}) , (:Active {Name: "Active Bookings"})<-[:subset]-(b), (:Past {Name: "Past Bookings"})<-[:subset]-(b), (:Request {Name: "Request"})<-[:subset]-(b), (:Declined {Name: "Declined"})<-[:subset]-(b), (:Waiting {Name: "Waiting"})<-[:subset]-(b), (:Canceled {Name: "Canceled"})<-[:subset]-(b) ;

/* Booking #1 - Complete Booking */

/* Create a Booking , Put in Bookings, Put in Waiting  -  ceate 1 Node, connect 3 Edges */

Match (p:Passenger {Name: "David"}), (w:Waiting) CREATE (b:Booking {BookingID: "B12345", Date: localdatetime.transaction() , Origin: "Address 1 ", Destinantion: "Address 2", Fare: 10.00 })-[:passenger]->(p), (p)-[:active_booking]->(b), (w)-[:in]->(b);

/* Assigne Car to Booking , Remove Car from Available , Mark Car as Busy, Mark Booking as Active and Remove Booking from Waiting  -  connect 4 Edges , detach 2 Edges */

Match (c:Car {Plate: "ABD-5678"}), (b:Booking {BookingID:"B12345"}) CREATE (c)-[r:active_booking]->(b), (b)-[t:taxi]->(c);
Match (c:Car {Plate: "ABD-5678"})<-[r:in]-(a:Available) DELETE r ;
Match (c:Car {Plate: "ABD-5678"}), (b:Busy) CREATE (b)-[:in]->(c) ;
Match (b:Booking {BookingID:"B12345"})<-[r:in]-(w:Waiting) DELETE r;
Match (b:Booking {BookingID:"B12345"}), (a:Active) CREATE (a)-[:in]->(b);


/* Complete the Booking: Delete active_booking from Passenger and Car,  Mark Booking as Past, Mark Car as Available - connect 4 Edges, detach 4 Edges*/

Match (c:Car)-[r:active_booking]->(b:Booking {BookingID:"B12345"}), (p:Past) CREATE (p)-[:in]->(b);
Match (b:Booking {BookingID:"B12345"})<-[r:in]-(a:Active) DELETE r;
Match (b:Booking {BookingID:"B12345"})<-[r:active_booking]-(c:Car)<-[r2:in]-(u:Busy) DELETE r2;
Match (b:Booking {BookingID:"B12345"})<-[r:active_booking]-(c:Car), (a:Available) CREATE (a)-[r2:in]->(c) ;
Match (h:History)<-[:history]-(c:Car)-[r:active_booking]->(b:Booking {BookingID:"B12345"}) CREATE (b)<-[:in]-(h);
Match (c:Car)-[r:active_booking]->(b:Booking {BookingID:"B12345"}) DELETE r;
Match (h:History)<-[:history]-(p:Passenger)-[r:active_booking]->(b:Booking {BookingID:"B12345"}) CREATE (b)<-[:in]-(h);
Match (p:Passenger)-[r:active_booking]->(b:Booking {BookingID:"B12345"}) DELETE r;


/* Booking #2 - Waitings */

/* Create a Booking , Put in Bookings, Put in Waiting */

Match (p:Passenger {Name: "Benson"}), (w:Waiting) CREATE (b:Booking {BookingID: "B67890", Date: localdatetime.transaction(), Origin: "Address 1 ", Destinantion: "Address 2" , Fare: 10.00 })-[:passenger]->(p), (p)-[:active_booking]->(b), (w)-[:in]->(b);

Match (p:Passenger {Name: "Cleber"}), (w:Waiting) CREATE (b:Booking {BookingID: "B34567", Date: localdatetime.transaction(), Origin: "Address 1 ", Destinantion: "Address 2" , Fare: 12.00 })-[:passenger]->(p), (p)-[:active_booking]->(b), (w)-[:in]->(b);


/* Booking #3 - Active  */

/* Create a Booking , Put in Bookings, Put in Waiting */

Match (p:Passenger {Name: "Antonio"}), (w:Waiting) CREATE (b:Booking {BookingID: "B23456", Date: localdatetime.transaction() , Origin: "Address 1 ", Destinantion: "Address 2" , Fare: 10.00 })-[:passenger]->(p), (p)-[:active_booking]->(b), (w)-[:in]->(b);

/* Assigne Car to Booking , Remove Car from Available , Mark Car as Busy, Mark Booking as Active and Remove Booking from Waiting */

Match (c:Car {Plate: "ABC-1234"}), (b:Booking {BookingID:"B23456"}) CREATE (c)-[r:active_booking]->(b), (b)-[t:taxi]->(c);
Match (c:Car {Plate: "ABC-1234"})<-[r:in]-(a:Available) DELETE r ;
Match (c:Car {Plate: "ABC-1234"}), (b:Busy) CREATE (b)-[r:in]->(c) ;
Match (b:Booking {BookingID:"B23456"})<-[r:in]-(w:Waiting) DELETE r;
Match (b:Booking {BookingID:"B23456"}), (a:Active) CREATE (a)-[r:in]->(b);


/* Send Car rom Available to Maintenance */

MATCH (c:Car {Plate: "ABF-5678"})<-[r:in]-(a:Available) DELETE r;
MATCH (c:Car {Plate: "ABF-5678"}), (m:Maintenance) CREATE (c)<-[:in]-(m);


/* Mark Car as OffDuty */

MATCH (c:Car {Plate: "ABG-1234"})<-[r:in]-(a:Available)  DELETE r;
MATCH (c:Car {Plate: "ABG-1234"}) , (o:OffDuty) CREATE (c)<-[:in]-(o);

/* Mark Car as Retired */

MATCH (c:Car {Plate: "ABG-5678"})<-[r:in]-(a:Available) DELETE r;
MATCH (c:Car {Plate: "ABG-5678"}) , (r:Retired) CREATE (c)<-[:in]-(r);

