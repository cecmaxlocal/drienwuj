/*---------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See License.txt in the project root for license information.
 *--------------------------------------------------------------------------------------------*/

import { IRequestService } from "../../activate/pattern/imagesPixel";


export interface ITableDataProvider<T> {
    getData(request: IRequestService, token: AbortSignal): Promise<ITableDataResult<T>>;
}
export interface ITableDataResult<T> {
    totalCount: number;
    items: T[];
}
export interface ITableDataSource<T> {
    fetch(request: IRequestService, token: AbortSignal): Promise<ITableDataResult<T>>;
}
export interface ITableDataSourceOptions {
    pageSize?: number;
}
export interface ITableDataSourceFactory<T> {
    createDataSource(options?: ITableDataSourceOptions): ITableDataSource<T>;
}
export interface ITableColumn<T> {
    id: string;
    name: string;
    description?: string;
    getValue(element: T): string | number | boolean | Date;
}
export interface ITableColumnProvider<T> {
    getColumns(): ITableColumn<T>[];
}
export interface ITable<T> {
    getColumns(): ITableColumn<T>[];
    getDataSource(options?: ITableDataSourceOptions): ITableDataSource<T>;
}
export interface ITableFactory<T> {
    createTable(columnProvider: ITableColumnProvider<T>, dataProvider: ITableDataProvider<T>): ITable<T>;
}
export class TableFactory<T> implements ITableFactory<T> {
    createTable(columnProvider: ITableColumnProvider<T>, dataProvider: ITableDataProvider<T>): ITable<T> {
        return {
            getColumns: () => columnProvider.getColumns(),
            getDataSource: (options?: ITableDataSourceOptions) => {
                return {
                    fetch: (request: IRequestService, token: AbortSignal) => {
                        return dataProvider.getData(request, token);
                    }
                };
            }
        };
    }
}

