/*
 * Copyright 2015 OpenCB
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.opencb.cellbase.core.db.api.variation;

import org.opencb.biodata.models.variant.Variant;
import org.opencb.cellbase.core.db.DBAdaptor;
import org.opencb.commons.datastore.core.QueryOptions;
import org.opencb.commons.datastore.core.QueryResult;

import java.util.List;

/**
 * Created by imedina on 16/11/15.
 */
public interface VariantFunctionalScoreDBAdaptor extends DBAdaptor {


    QueryResult getByVariant(String chromosome, int position, String reference, String alternate, QueryOptions queryOptions);


    QueryResult getByVariant(Variant variant, QueryOptions queryOptions);

    List<QueryResult> getAllByVariantList(List<Variant> variantList, QueryOptions queryOptions);

}
