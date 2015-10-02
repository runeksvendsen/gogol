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
-- Module      : Network.Google.Resource.TagManager.Accounts.Containers.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a Container.
--
-- /See:/ <https://developers.google.com/tag-manager/api/v1/ Tag Manager API Reference> for @TagManagerAccountsContainersUpdate@.
module Network.Google.Resource.TagManager.Accounts.Containers.Update
    (
    -- * REST Resource
      AccountsContainersUpdateResource

    -- * Creating a Request
    , accountsContainersUpdate'
    , AccountsContainersUpdate'

    -- * Request Lenses
    , acuQuotaUser
    , acuPrettyPrint
    , acuContainerId
    , acuUserIP
    , acuFingerprint
    , acuAccountId
    , acuKey
    , acuContainer
    , acuOAuthToken
    , acuFields
    ) where

import           Network.Google.Prelude
import           Network.Google.TagManager.Types

-- | A resource alias for @TagManagerAccountsContainersUpdate@ which the
-- 'AccountsContainersUpdate'' request conforms to.
type AccountsContainersUpdateResource =
     "accounts" :>
       Capture "accountId" Text :>
         "containers" :>
           Capture "containerId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fingerprint" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Container :> Put '[JSON] Container

-- | Updates a Container.
--
-- /See:/ 'accountsContainersUpdate'' smart constructor.
data AccountsContainersUpdate' = AccountsContainersUpdate'
    { _acuQuotaUser   :: !(Maybe Text)
    , _acuPrettyPrint :: !Bool
    , _acuContainerId :: !Text
    , _acuUserIP      :: !(Maybe Text)
    , _acuFingerprint :: !(Maybe Text)
    , _acuAccountId   :: !Text
    , _acuKey         :: !(Maybe Key)
    , _acuContainer   :: !Container
    , _acuOAuthToken  :: !(Maybe OAuthToken)
    , _acuFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AccountsContainersUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acuQuotaUser'
--
-- * 'acuPrettyPrint'
--
-- * 'acuContainerId'
--
-- * 'acuUserIP'
--
-- * 'acuFingerprint'
--
-- * 'acuAccountId'
--
-- * 'acuKey'
--
-- * 'acuContainer'
--
-- * 'acuOAuthToken'
--
-- * 'acuFields'
accountsContainersUpdate'
    :: Text -- ^ 'containerId'
    -> Text -- ^ 'accountId'
    -> Container -- ^ 'Container'
    -> AccountsContainersUpdate'
accountsContainersUpdate' pAcuContainerId_ pAcuAccountId_ pAcuContainer_ =
    AccountsContainersUpdate'
    { _acuQuotaUser = Nothing
    , _acuPrettyPrint = True
    , _acuContainerId = pAcuContainerId_
    , _acuUserIP = Nothing
    , _acuFingerprint = Nothing
    , _acuAccountId = pAcuAccountId_
    , _acuKey = Nothing
    , _acuContainer = pAcuContainer_
    , _acuOAuthToken = Nothing
    , _acuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
acuQuotaUser :: Lens' AccountsContainersUpdate' (Maybe Text)
acuQuotaUser
  = lens _acuQuotaUser (\ s a -> s{_acuQuotaUser = a})

-- | Returns response with indentations and line breaks.
acuPrettyPrint :: Lens' AccountsContainersUpdate' Bool
acuPrettyPrint
  = lens _acuPrettyPrint
      (\ s a -> s{_acuPrettyPrint = a})

-- | The GTM Container ID.
acuContainerId :: Lens' AccountsContainersUpdate' Text
acuContainerId
  = lens _acuContainerId
      (\ s a -> s{_acuContainerId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
acuUserIP :: Lens' AccountsContainersUpdate' (Maybe Text)
acuUserIP
  = lens _acuUserIP (\ s a -> s{_acuUserIP = a})

-- | When provided, this fingerprint must match the fingerprint of the
-- container in storage.
acuFingerprint :: Lens' AccountsContainersUpdate' (Maybe Text)
acuFingerprint
  = lens _acuFingerprint
      (\ s a -> s{_acuFingerprint = a})

-- | The GTM Account ID.
acuAccountId :: Lens' AccountsContainersUpdate' Text
acuAccountId
  = lens _acuAccountId (\ s a -> s{_acuAccountId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
acuKey :: Lens' AccountsContainersUpdate' (Maybe Key)
acuKey = lens _acuKey (\ s a -> s{_acuKey = a})

-- | Multipart request metadata.
acuContainer :: Lens' AccountsContainersUpdate' Container
acuContainer
  = lens _acuContainer (\ s a -> s{_acuContainer = a})

-- | OAuth 2.0 token for the current user.
acuOAuthToken :: Lens' AccountsContainersUpdate' (Maybe OAuthToken)
acuOAuthToken
  = lens _acuOAuthToken
      (\ s a -> s{_acuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
acuFields :: Lens' AccountsContainersUpdate' (Maybe Text)
acuFields
  = lens _acuFields (\ s a -> s{_acuFields = a})

instance GoogleAuth AccountsContainersUpdate' where
        authKey = acuKey . _Just
        authToken = acuOAuthToken . _Just

instance GoogleRequest AccountsContainersUpdate'
         where
        type Rs AccountsContainersUpdate' = Container
        request = requestWithRoute defReq tagManagerURL
        requestWithRoute r u AccountsContainersUpdate'{..}
          = go _acuQuotaUser (Just _acuPrettyPrint)
              _acuContainerId
              _acuUserIP
              _acuFingerprint
              _acuAccountId
              _acuKey
              _acuOAuthToken
              _acuFields
              (Just AltJSON)
              _acuContainer
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AccountsContainersUpdateResource)
                      r
                      u