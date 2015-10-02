{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetPools.GetHealth
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets the most recent health check results for each IP for the given
-- instance that is referenced by given TargetPool.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsGetHealth@.
module Network.Google.Resource.Compute.TargetPools.GetHealth
    (
    -- * REST Resource
      TargetPoolsGetHealthResource

    -- * Creating a Request
    , targetPoolsGetHealth'
    , TargetPoolsGetHealth'

    -- * Request Lenses
    , tpghQuotaUser
    , tpghPrettyPrint
    , tpghInstanceReference
    , tpghProject
    , tpghTargetPool
    , tpghUserIP
    , tpghKey
    , tpghRegion
    , tpghOAuthToken
    , tpghFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsGetHealth@ which the
-- 'TargetPoolsGetHealth'' request conforms to.
type TargetPoolsGetHealthResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "getHealth" :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] InstanceReference :>
                                 Post '[JSON] TargetPoolInstanceHealth

-- | Gets the most recent health check results for each IP for the given
-- instance that is referenced by given TargetPool.
--
-- /See:/ 'targetPoolsGetHealth'' smart constructor.
data TargetPoolsGetHealth' = TargetPoolsGetHealth'
    { _tpghQuotaUser         :: !(Maybe Text)
    , _tpghPrettyPrint       :: !Bool
    , _tpghInstanceReference :: !InstanceReference
    , _tpghProject           :: !Text
    , _tpghTargetPool        :: !Text
    , _tpghUserIP            :: !(Maybe Text)
    , _tpghKey               :: !(Maybe Key)
    , _tpghRegion            :: !Text
    , _tpghOAuthToken        :: !(Maybe OAuthToken)
    , _tpghFields            :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsGetHealth'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpghQuotaUser'
--
-- * 'tpghPrettyPrint'
--
-- * 'tpghInstanceReference'
--
-- * 'tpghProject'
--
-- * 'tpghTargetPool'
--
-- * 'tpghUserIP'
--
-- * 'tpghKey'
--
-- * 'tpghRegion'
--
-- * 'tpghOAuthToken'
--
-- * 'tpghFields'
targetPoolsGetHealth'
    :: InstanceReference -- ^ 'InstanceReference'
    -> Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> Text -- ^ 'region'
    -> TargetPoolsGetHealth'
targetPoolsGetHealth' pTpghInstanceReference_ pTpghProject_ pTpghTargetPool_ pTpghRegion_ =
    TargetPoolsGetHealth'
    { _tpghQuotaUser = Nothing
    , _tpghPrettyPrint = True
    , _tpghInstanceReference = pTpghInstanceReference_
    , _tpghProject = pTpghProject_
    , _tpghTargetPool = pTpghTargetPool_
    , _tpghUserIP = Nothing
    , _tpghKey = Nothing
    , _tpghRegion = pTpghRegion_
    , _tpghOAuthToken = Nothing
    , _tpghFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpghQuotaUser :: Lens' TargetPoolsGetHealth' (Maybe Text)
tpghQuotaUser
  = lens _tpghQuotaUser
      (\ s a -> s{_tpghQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpghPrettyPrint :: Lens' TargetPoolsGetHealth' Bool
tpghPrettyPrint
  = lens _tpghPrettyPrint
      (\ s a -> s{_tpghPrettyPrint = a})

-- | Multipart request metadata.
tpghInstanceReference :: Lens' TargetPoolsGetHealth' InstanceReference
tpghInstanceReference
  = lens _tpghInstanceReference
      (\ s a -> s{_tpghInstanceReference = a})

tpghProject :: Lens' TargetPoolsGetHealth' Text
tpghProject
  = lens _tpghProject (\ s a -> s{_tpghProject = a})

-- | Name of the TargetPool resource to which the queried instance belongs.
tpghTargetPool :: Lens' TargetPoolsGetHealth' Text
tpghTargetPool
  = lens _tpghTargetPool
      (\ s a -> s{_tpghTargetPool = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpghUserIP :: Lens' TargetPoolsGetHealth' (Maybe Text)
tpghUserIP
  = lens _tpghUserIP (\ s a -> s{_tpghUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpghKey :: Lens' TargetPoolsGetHealth' (Maybe Key)
tpghKey = lens _tpghKey (\ s a -> s{_tpghKey = a})

-- | Name of the region scoping this request.
tpghRegion :: Lens' TargetPoolsGetHealth' Text
tpghRegion
  = lens _tpghRegion (\ s a -> s{_tpghRegion = a})

-- | OAuth 2.0 token for the current user.
tpghOAuthToken :: Lens' TargetPoolsGetHealth' (Maybe OAuthToken)
tpghOAuthToken
  = lens _tpghOAuthToken
      (\ s a -> s{_tpghOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpghFields :: Lens' TargetPoolsGetHealth' (Maybe Text)
tpghFields
  = lens _tpghFields (\ s a -> s{_tpghFields = a})

instance GoogleAuth TargetPoolsGetHealth' where
        authKey = tpghKey . _Just
        authToken = tpghOAuthToken . _Just

instance GoogleRequest TargetPoolsGetHealth' where
        type Rs TargetPoolsGetHealth' =
             TargetPoolInstanceHealth
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsGetHealth'{..}
          = go _tpghQuotaUser (Just _tpghPrettyPrint)
              _tpghProject
              _tpghTargetPool
              _tpghUserIP
              _tpghKey
              _tpghRegion
              _tpghOAuthToken
              _tpghFields
              (Just AltJSON)
              _tpghInstanceReference
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsGetHealthResource)
                      r
                      u