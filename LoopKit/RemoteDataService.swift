//
//  RemoteDataService.swift
//  LoopKit
//
//  Created by Darin Krauss on 5/21/19.
//  Copyright © 2019 LoopKit Authors. All rights reserved.
//

/**
 Protocol for a remote data service.
*/
public protocol RemoteDataService: Service {

    /// The maximum number of carb data to upload to the remote data service at one time.
    var carbDataLimit: Int? { get }

    /**
     Upload carb data to the remote data service.

     - Parameter deleted: The deleted carb data to upload.
     - Parameter stored: The stored carb data to upload.
     - Parameter completion: The completion function to call with any success or failure.
     */
    func uploadCarbData(deleted: [DeletedCarbEntry], stored: [StoredCarbEntry], completion: @escaping (_ result: Result<Bool, Error>) -> Void)

    /// The maximum number of dose data to upload to the remote data service at one time.
    var doseDataLimit: Int? { get }

    /**
     Upload dose data to the remote data service.

     - Parameter stored: The stored dose data to upload.
     - Parameter completion: The completion function to call with any success or failure.
     */
    func uploadDoseData(_ stored: [DoseEntry], completion: @escaping (_ result: Result<Bool, Error>) -> Void)

    /// The maximum number of dosing decision data to upload to the remote data service at one time.
    var dosingDecisionDataLimit: Int? { get }

    /**
     Upload dosing decision data to the remote data service.

     - Parameter stored: The stored dosing decision data to upload.
     - Parameter completion: The completion function to call with any success or failure.
     */
    func uploadDosingDecisionData(_ stored: [StoredDosingDecision], completion: @escaping (_ result: Result<Bool, Error>) -> Void)

    /// The maximum number of glucose data to upload to the remote data service at one time.
    var glucoseDataLimit: Int? { get }

    /**
     Upload glucose data to the remote data service.

     - Parameter stored: The stored glucose data to upload.
     - Parameter completion: The completion function to call with any success or failure.
     */
    func uploadGlucoseData(_ stored: [StoredGlucoseSample], completion: @escaping (_ result: Result<Bool, Error>) -> Void)

    /// The maximum number of pump event data to upload to the remote data service at one time.
    var pumpEventDataLimit: Int? { get }

    /**
     Upload pump event data to the remote data service.

     - Parameter stored: The stored pump event data to upload.
     - Parameter completion: The completion function to call with any success or failure.
     */
    func uploadPumpEventData(_ stored: [PersistedPumpEvent], completion: @escaping (_ result: Result<Bool, Error>) -> Void)

    /// The maximum number of settings data to upload to the remote data service at one time.
    var settingsDataLimit: Int? { get }

    /**
     Upload settings data to the remote data service.

     - Parameter stored: The stored settings data to upload.
     - Parameter completion: The completion function to call with any success or failure.
     */
    func uploadSettingsData(_ stored: [StoredSettings], completion: @escaping (_ result: Result<Bool, Error>) -> Void)

}

public extension RemoteDataService {

    var carbDataLimit: Int? { return nil }

    var doseDataLimit: Int? { return nil }

    var dosingDecisionDataLimit: Int? { return nil }

    var glucoseDataLimit: Int? { return nil }

    var pumpEventDataLimit: Int? { return nil }

    var settingsDataLimit: Int? { return nil }

}