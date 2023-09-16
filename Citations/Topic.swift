//
//  Topic.swift
//  Citations
//
//  Created by Deirdre Saoirse Moen on 9/3/23.
//

import SwiftData

@Model
final class Topic {
	var name: String
	var parent: Topic?
	
	// MARK: relationships
	@Relationship var citations: [Citation]?

	init(name: String, parent: Topic? = nil) {
		self.name = name
		
		if let parent {
			self.parent = parent
		}
	}
}
