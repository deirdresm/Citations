//
//  Citation.swift
//  Citations
//
//  Created by deirdre on 9/3/23.
//

import SwiftData

@Model
final class Citation {
	var name: String
	var leadAuthors: String
	var otherAuthors: String
	var year: Int
	var doi: String?
	
	@Relationship(inverse: \Topic.citations) var topics: [Topic]?

	init(name: String,
		 leadAuthors: String = "",
		 otherAuthors: String = "",
		 year: Int = 1900,
		 doi: String? = nil,
		 topics: [Topic]) {
		
		self.name = name
		self.leadAuthors = leadAuthors
		self.otherAuthors = otherAuthors
		self.year = year
		
		self.doi = doi
		self.topics = topics
	}
}
