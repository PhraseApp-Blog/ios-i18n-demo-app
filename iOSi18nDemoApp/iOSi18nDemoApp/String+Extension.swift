//
//  String+Extension.swift
//  iOSi18nDemoApp
//
//  Created by Onyekachi Ezeoke on 01/06/2020.
//  Copyright © 2020 Onyekachi Ezeoke. All rights reserved.
//

import Foundation

extension String {
    /// Localized string for key.
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
