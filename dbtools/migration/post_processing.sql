-- Last step of migration, we need to make some data adjustment for new OFBiz version

-- Set last quote number in preferences
UPDATE party_acctg_preference SET last_quote_number = (SELECT MAX(quote_id)::INTEGER FROM quote) WHERE party_id = '10000';