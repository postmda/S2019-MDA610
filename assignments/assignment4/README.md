### Assignment 4 (due March 5)
1. Read the following online resources on entity relationship modeling and normalization.
  - [Database Design by Adrienne Watt: Chapter 8](https://opentextbc.ca/dbdesign01/chapter/chapter-8-entity-relationship-model/)
  - [Entity Relationship Diagram](https://medium.com/omarelgabrys-blog/database-modeling-entity-relationship-diagram-part-5-352c5a8859e5)
  - [NYU Lecture Notes on entity relationship modeling](https://cs.nyu.edu/courses/spring01/G22.2433-001/mod2.2.pdf)
  - [Database Design by Adrienne Watt: Chapter 12](https://opentextbc.ca/dbdesign01/chapter/chapter-12-normalization/)
2. Take Post-class Quiz 3 on Blackboard.
3. Read [Programming Concepts: Compiled and Interpreted Languages](https://thesocietea.org/2015/07/programming-concepts-compiled-and-interpreted-languages/).  
4. Use [ERDPlus](https://erdplus.com) to make an ER diagram for the database of an investment research company. The database is supposed to contain the following information:
  - It will keep track of investment companies, the mutual funds they manage, and securities
contained in the mutual funds.
  - For each investment company, it will keep track of a unique investment
company identifier, a unique investment company name, and the investment
company’s address.
  - For each mutual fund, it will keep track of a unique mutual fund identifier, the
mutual fund name, and the mutual fund inception date.
  - For each security, it will keep track of a unique security identifier, as well as
the security name and type.
  - Investment companies can manage multiple mutual funds. It will not keep
track of investment companies that do not manage any mutual funds. A mutual fund is
managed by one investment company.
  - A mutual fund contains one or many securities. A security can be included in many mutual
funds. It will keep track of securities that are not included in any mutual funds.
  - For each instance of a security included in a mutual fund, it will keep track of
the amount included.
5. After you make the ER diagram, convert it into a relational schema in ERDPlus. Export both the ER diagram and the relational schema as images. Finally, publish a GitHub page that displays both images and email the instructor the URL of the GitHub page.  