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
-- Module      : Network.Google.Resource.DoubleClickSearch.Conversion.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates a batch of conversions in DoubleClick Search.
--
-- /See:/ <https://developers.google.com/doubleclick-search/ DoubleClick Search API Reference> for @DoubleClicksearchConversionUpdate@.
module Network.Google.Resource.DoubleClickSearch.Conversion.Update
    (
    -- * REST Resource
      ConversionUpdateResource

    -- * Creating a Request
    , conversionUpdate'
    , ConversionUpdate'

    -- * Request Lenses
    , cuQuotaUser
    , cuPrettyPrint
    , cuUserIP
    , cuKey
    , cuConversionList
    , cuOAuthToken
    , cuFields
    ) where

import           Network.Google.DoubleClickSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @DoubleClicksearchConversionUpdate@ which the
-- 'ConversionUpdate'' request conforms to.
type ConversionUpdateResource =
     "conversion" :>
       QueryParam "quotaUser" Text :>
         QueryParam "prettyPrint" Bool :>
           QueryParam "userIp" Text :>
             QueryParam "key" Key :>
               QueryParam "oauth_token" OAuthToken :>
                 QueryParam "fields" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ConversionList :>
                       Put '[JSON] ConversionList

-- | Updates a batch of conversions in DoubleClick Search.
--
-- /See:/ 'conversionUpdate'' smart constructor.
data ConversionUpdate' = ConversionUpdate'
    { _cuQuotaUser      :: !(Maybe Text)
    , _cuPrettyPrint    :: !Bool
    , _cuUserIP         :: !(Maybe Text)
    , _cuKey            :: !(Maybe Key)
    , _cuConversionList :: !ConversionList
    , _cuOAuthToken     :: !(Maybe OAuthToken)
    , _cuFields         :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ConversionUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cuQuotaUser'
--
-- * 'cuPrettyPrint'
--
-- * 'cuUserIP'
--
-- * 'cuKey'
--
-- * 'cuConversionList'
--
-- * 'cuOAuthToken'
--
-- * 'cuFields'
conversionUpdate'
    :: ConversionList -- ^ 'ConversionList'
    -> ConversionUpdate'
conversionUpdate' pCuConversionList_ =
    ConversionUpdate'
    { _cuQuotaUser = Nothing
    , _cuPrettyPrint = True
    , _cuUserIP = Nothing
    , _cuKey = Nothing
    , _cuConversionList = pCuConversionList_
    , _cuOAuthToken = Nothing
    , _cuFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cuQuotaUser :: Lens' ConversionUpdate' (Maybe Text)
cuQuotaUser
  = lens _cuQuotaUser (\ s a -> s{_cuQuotaUser = a})

-- | Returns response with indentations and line breaks.
cuPrettyPrint :: Lens' ConversionUpdate' Bool
cuPrettyPrint
  = lens _cuPrettyPrint
      (\ s a -> s{_cuPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cuUserIP :: Lens' ConversionUpdate' (Maybe Text)
cuUserIP = lens _cuUserIP (\ s a -> s{_cuUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cuKey :: Lens' ConversionUpdate' (Maybe Key)
cuKey = lens _cuKey (\ s a -> s{_cuKey = a})

-- | Multipart request metadata.
cuConversionList :: Lens' ConversionUpdate' ConversionList
cuConversionList
  = lens _cuConversionList
      (\ s a -> s{_cuConversionList = a})

-- | OAuth 2.0 token for the current user.
cuOAuthToken :: Lens' ConversionUpdate' (Maybe OAuthToken)
cuOAuthToken
  = lens _cuOAuthToken (\ s a -> s{_cuOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cuFields :: Lens' ConversionUpdate' (Maybe Text)
cuFields = lens _cuFields (\ s a -> s{_cuFields = a})

instance GoogleAuth ConversionUpdate' where
        authKey = cuKey . _Just
        authToken = cuOAuthToken . _Just

instance GoogleRequest ConversionUpdate' where
        type Rs ConversionUpdate' = ConversionList
        request
          = requestWithRoute defReq doubleClickSearchURL
        requestWithRoute r u ConversionUpdate'{..}
          = go _cuQuotaUser (Just _cuPrettyPrint) _cuUserIP
              _cuKey
              _cuOAuthToken
              _cuFields
              (Just AltJSON)
              _cuConversionList
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ConversionUpdateResource)
                      r
                      u