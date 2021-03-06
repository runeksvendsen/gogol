{-# LANGUAGE DataKinds         #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE TypeOperators     #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Container
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Builds and manages clusters that run container-based applications,
-- powered by open source Kubernetes technology.
--
-- /See:/ <https://cloud.google.com/container-engine/ Google Container Engine API Reference>
module Network.Google.Container
    (
    -- * Service Configuration
      containerService

    -- * OAuth Scopes
    , cloudPlatformScope

    -- * API Declaration
    , ContainerAPI

    -- * Resources

    -- ** container.projects.zones.clusters.create
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Create

    -- ** container.projects.zones.clusters.delete
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Delete

    -- ** container.projects.zones.clusters.get
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Get

    -- ** container.projects.zones.clusters.list
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.List

    -- ** container.projects.zones.clusters.nodePools.create
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Create

    -- ** container.projects.zones.clusters.nodePools.delete
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Delete

    -- ** container.projects.zones.clusters.nodePools.get
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Get

    -- ** container.projects.zones.clusters.nodePools.list
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.List

    -- ** container.projects.zones.clusters.update
    , module Network.Google.Resource.Container.Projects.Zones.Clusters.Update

    -- ** container.projects.zones.getServerconfig
    , module Network.Google.Resource.Container.Projects.Zones.GetServerConfig

    -- ** container.projects.zones.operations.get
    , module Network.Google.Resource.Container.Projects.Zones.Operations.Get

    -- ** container.projects.zones.operations.list
    , module Network.Google.Resource.Container.Projects.Zones.Operations.List

    -- * Types

    -- ** HorizontalPodAutoscaling
    , HorizontalPodAutoscaling
    , horizontalPodAutoscaling
    , hpaDisabled

    -- ** ListOperationsResponse
    , ListOperationsResponse
    , listOperationsResponse
    , lorOperations
    , lorMissingZones

    -- ** CreateClusterRequest
    , CreateClusterRequest
    , createClusterRequest
    , ccrCluster

    -- ** Cluster
    , Cluster
    , cluster
    , cStatus
    , cNodePools
    , cNodeConfig
    , cNodeIPv4CIdRSize
    , cClusterIPv4CIdR
    , cInitialNodeCount
    , cCurrentNodeVersion
    , cNetwork
    , cInitialClusterVersion
    , cZone
    , cAddonsConfig
    , cServicesIPv4CIdR
    , cMasterAuth
    , cSelfLink
    , cName
    , cCurrentMasterVersion
    , cStatusMessage
    , cSubnetwork
    , cCurrentNodeCount
    , cEndpoint
    , cLocations
    , cLoggingService
    , cDescription
    , cInstanceGroupURLs
    , cMonitoringService
    , cCreateTime

    -- ** UpdateClusterRequest
    , UpdateClusterRequest
    , updateClusterRequest
    , ucrUpdate

    -- ** NodeConfig
    , NodeConfig
    , nodeConfig
    , ncDiskSizeGb
    , ncOAuthScopes
    , ncMachineType
    , ncMetadata

    -- ** HTTPLoadBalancing
    , HTTPLoadBalancing
    , hTTPLoadBalancing
    , httplbDisabled

    -- ** Operation
    , Operation
    , operation
    , oStatus
    , oZone
    , oSelfLink
    , oName
    , oStatusMessage
    , oOperationType
    , oTargetLink
    , oDetail

    -- ** AddonsConfig
    , AddonsConfig
    , addonsConfig
    , acHorizontalPodAutoscaling
    , acHTTPLoadBalancing

    -- ** NodePool
    , NodePool
    , nodePool
    , npStatus
    , npConfig
    , npInitialNodeCount
    , npSelfLink
    , npName
    , npStatusMessage
    , npVersion
    , npInstanceGroupURLs

    -- ** MasterAuth
    , MasterAuth
    , masterAuth
    , maClientKey
    , maUsername
    , maClientCertificate
    , maPassword
    , maClusterCaCertificate

    -- ** NodeConfigMetadata
    , NodeConfigMetadata
    , nodeConfigMetadata
    , ncmAddtional

    -- ** ServerConfig
    , ServerConfig
    , serverConfig
    , scValidNodeVersions
    , scDefaultImageFamily
    , scValidImageFamilies
    , scDefaultClusterVersion

    -- ** ListClustersResponse
    , ListClustersResponse
    , listClustersResponse
    , lcrClusters
    , lcrMissingZones

    -- ** ClusterUpdate
    , ClusterUpdate
    , clusterUpdate
    , cuDesiredAddonsConfig
    , cuDesiredNodePoolId
    , cuDesiredNodeVersion
    , cuDesiredMasterVersion
    , cuDesiredMonitoringService

    -- ** ListNodePoolsResponse
    , ListNodePoolsResponse
    , listNodePoolsResponse
    , lnprNodePools

    -- ** CreateNodePoolRequest
    , CreateNodePoolRequest
    , createNodePoolRequest
    , cnprNodePool
    ) where

import           Network.Google.Container.Types
import           Network.Google.Prelude
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Create
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Delete
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Get
import           Network.Google.Resource.Container.Projects.Zones.Clusters.List
import           Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Create
import           Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Delete
import           Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.Get
import           Network.Google.Resource.Container.Projects.Zones.Clusters.NodePools.List
import           Network.Google.Resource.Container.Projects.Zones.Clusters.Update
import           Network.Google.Resource.Container.Projects.Zones.GetServerConfig
import           Network.Google.Resource.Container.Projects.Zones.Operations.Get
import           Network.Google.Resource.Container.Projects.Zones.Operations.List

{- $resources
TODO
-}

-- | Represents the entirety of the methods and resources available for the Google Container Engine API service.
type ContainerAPI =
     ProjectsZonesOperationsListResource :<|>
       ProjectsZonesOperationsGetResource
       :<|> ProjectsZonesClustersNodePoolsListResource
       :<|> ProjectsZonesClustersNodePoolsGetResource
       :<|> ProjectsZonesClustersNodePoolsCreateResource
       :<|> ProjectsZonesClustersNodePoolsDeleteResource
       :<|> ProjectsZonesClustersListResource
       :<|> ProjectsZonesClustersGetResource
       :<|> ProjectsZonesClustersCreateResource
       :<|> ProjectsZonesClustersDeleteResource
       :<|> ProjectsZonesClustersUpdateResource
       :<|> ProjectsZonesGetServerConfigResource
