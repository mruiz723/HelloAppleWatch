//
//  Job.swift
//  HelloWorld
//
//  Created by mruiz723 on 3/1/16.
//  Copyright © 2016 Integro. All rights reserved.
//

import Foundation

class Job{
    
    //MARK: - Properties
    var name:String?
    var salary:String?
    var descriptionJob:String?
    
    //MARK: - Init
    
    //Designated Initializers
    init(name:String, salary:String, descriptionJob:String){
        self.name = name
        self.salary = salary
        self.descriptionJob = descriptionJob
    }
    
    //Convenience Initializers
    convenience init(){
        self.init(name:"", salary:"", descriptionJob:"")
    }
    
    
    //MARK: Utils
    static func jobs() -> [Job]{
        // class func jobs. Allow subclasses to override the superclass’s implementation of that method.
        var jobs = [Job]()
        let rawData = [
            ["name":"iOS dev", "salary":"US $100.000", "descriptionJob":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
            ["name":"android dev", "salary":"US $90.000", "descriptionJob":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
            ["name":"Frontend dev", "salary":"US $90.000", "descriptionJob":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
            ["name":"Backend dev", "salary":"US $90.000", "descriptionJob":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
            ["name":"iOS dev", "salary":"US $100.000", "descriptionJob":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
            ["name":"iOS dev", "salary":"US $100.000", "descriptionJob":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."],
            ["name":"iOS dev", "salary":"US $100.000", "descriptionJob":"Lorem Ipsum is simply dummy text of the printing and typesetting industry."]
        ]
        
        for item in rawData {
            let job = Job(name: item["name"]!, salary: item["salary"]!, descriptionJob: item["descriptionJob"]!)
            jobs.append(job)
        }
        
        return jobs
    }
    
}
