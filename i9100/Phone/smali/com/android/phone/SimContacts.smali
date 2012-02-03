.class public Lcom/android/phone/SimContacts;
.super Lcom/android/phone/ADNList;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimContacts$ImportAllSimContactsThread;,
        Lcom/android/phone/SimContacts$NamePhoneTypePair;
    }
.end annotation


# static fields
.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimContacts;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SimContacts;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 13
    .parameter "cursor"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 140
    new-instance v0, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    iget-object v9, v0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    .line 143
    .local v9, name:Ljava/lang/String;
    iget v12, v0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    .line 144
    .local v12, phoneType:I
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v0           #namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    move-result-object v11

    .line 145
    .local v11, phoneNumber:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, emailAddresses:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0
    if-nez p0, :cond_1

    .line 148
    const-string p0, ","

    invoke-virtual {v7, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .local p0, emailAddressArray:[Ljava/lang/String;
    move-object v6, p0

    .line 153
    .end local p0           #emailAddressArray:[Ljava/lang/String;
    .local v6, emailAddressArray:[Ljava/lang/String;
    :goto_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v10, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object p0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 157
    .local p0, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v8, 0x0

    .line 158
    .local v8, myGroupsId:Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 159
    const-string v0, "account_name"

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 160
    const-string v0, "account_type"

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 163
    const-string v0, "com.google"

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .end local p2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 164
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 p2, 0x1

    new-array v2, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "sourceid"

    aput-object v0, v2, p2

    const-string v3, "title=?"

    const/4 p2, 0x1

    new-array v4, p2, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "System Group: My Contacts"

    aput-object v0, v4, p2

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 169
    .local v0, tmpCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_7

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 170
    const/4 p2, 0x0

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 173
    .end local v8           #myGroupsId:Ljava/lang/String;
    .local p2, myGroupsId:Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v3, p2

    .line 181
    .end local v0           #tmpCursor:Landroid/database/Cursor;
    .end local p2           #myGroupsId:Ljava/lang/String;
    .local v3, myGroupsId:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .end local p0           #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 184
    .restart local p0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string p2, "raw_contact_id"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 185
    const-string p2, "mimetype"

    const-string v0, "vnd.android.cursor.item/name"

    invoke-virtual {p0, p2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 186
    const-string p2, "data1"

    invoke-virtual {p0, p2, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 187
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    .end local p0           #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 190
    .local p2, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string p0, "raw_contact_id"

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 191
    const-string p0, "mimetype"

    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p2, p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 192
    const-string p0, "data2"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 193
    const-string p0, "data1"

    invoke-virtual {p2, p0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 194
    const-string p0, "is_primary"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 195
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-virtual {v10, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    if-eqz v7, :cond_5

    .line 198
    move-object p0, v6

    .local p0, arr$:[Ljava/lang/String;
    array-length v2, p0

    .local v2, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    move v1, v0

    .end local v0           #i$:I
    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v0, p0, v1

    .line 199
    .local v0, emailAddress:Ljava/lang/String;
    sget-object p2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .end local p2           #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 200
    .restart local p2       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v4, "raw_contact_id"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 201
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 202
    const-string v4, "data2"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 203
    const-string v4, "data1"

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 204
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .end local v0           #emailAddress:Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i$:I
    .local v0, i$:I
    move v1, v0

    .end local v0           #i$:I
    .restart local v1       #i$:I
    goto :goto_3

    .line 150
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #myGroupsId:Ljava/lang/String;
    .end local v6           #emailAddressArray:[Ljava/lang/String;
    .end local v10           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local p0           #arr$:[Ljava/lang/String;
    .local p2, account:Landroid/accounts/Account;
    :cond_1
    const/4 p0, 0x0

    .local p0, emailAddressArray:[Ljava/lang/String;
    move-object v6, p0

    .end local p0           #emailAddressArray:[Ljava/lang/String;
    .restart local v6       #emailAddressArray:[Ljava/lang/String;
    goto/16 :goto_0

    .line 173
    .end local p2           #account:Landroid/accounts/Account;
    .local v0, tmpCursor:Landroid/database/Cursor;
    .restart local v8       #myGroupsId:Ljava/lang/String;
    .restart local v10       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p0, builder:Landroid/content/ContentProviderOperation$Builder;
    :catchall_0
    move-exception p0

    .end local p0           #builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0

    .line 179
    .end local v0           #tmpCursor:Landroid/database/Cursor;
    .restart local p0       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local p2       #account:Landroid/accounts/Account;
    :cond_3
    sget-object p2, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    .end local p2           #account:Landroid/accounts/Account;
    invoke-virtual {p0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    :cond_4
    move-object v3, v8

    .end local v8           #myGroupsId:Ljava/lang/String;
    .restart local v3       #myGroupsId:Ljava/lang/String;
    goto/16 :goto_2

    .end local p0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .local p2, builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_5
    move-object p0, p2

    .line 208
    .end local p2           #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local p0       #builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz v3, :cond_6

    .line 209
    sget-object p0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .end local p0           #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    .line 210
    .restart local p0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string p2, "raw_contact_id"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 211
    const-string p2, "mimetype"

    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, p2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 212
    const-string p2, "group_sourceid"

    invoke-virtual {p0, p2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 213
    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_6
    :try_start_1
    const-string p0, "com.android.contacts"

    .end local p0           #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {p1, p0, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    .end local p1
    :goto_4
    return-void

    .line 218
    .restart local p1
    :catch_0
    move-exception p0

    .line 219
    .local p0, e:Landroid/os/RemoteException;
    const-string p1, "SimContacts"

    .end local p1
    const-string p2, "%s: %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Landroid/os/RemoteException;
    aput-object p0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 220
    .restart local p1
    :catch_1
    move-exception p0

    .line 221
    .local p0, e:Landroid/content/OperationApplicationException;
    const-string p1, "SimContacts"

    .end local p1
    const-string p2, "%s: %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0           #e:Landroid/content/OperationApplicationException;
    aput-object p0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v3           #myGroupsId:Ljava/lang/String;
    .restart local v0       #tmpCursor:Landroid/database/Cursor;
    .restart local v8       #myGroupsId:Ljava/lang/String;
    .local p0, builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local p1
    :cond_7
    move-object p2, v8

    .end local v8           #myGroupsId:Ljava/lang/String;
    .local p2, myGroupsId:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private importOneSimContact(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    invoke-static {v1, v0, v2}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    const-string v1, "SimContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to move the cursor to the position \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 254
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 315
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 324
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 317
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 318
    .local v0, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 319
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local v0           #menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 320
    .local v1, position:I
    invoke-direct {p0, v1}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 321
    const/4 v2, 0x1

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 238
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 241
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 242
    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    .line 249
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/SimContacts;->registerForContextMenu(Landroid/view/View;)V

    .line 250
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v5, 0x0

    .line 330
    instance-of v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v3, :cond_1

    .line 331
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    .line 333
    .local v1, itemInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 334
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 335
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 337
    :cond_0
    const/4 v3, 0x1

    const v4, 0x7f0d01c0

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 339
    .end local v1           #itemInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 271
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 272
    const/4 v0, 0x2

    const v1, 0x7f0d01c1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 367
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/ADNList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 350
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, phoneNumber:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v5

    .line 355
    goto :goto_0

    .line 357
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1080

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->startActivity(Landroid/content/Intent;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->finish()V

    move v2, v5

    .line 363
    goto :goto_0

    .line 348
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 343
    invoke-direct {p0, p3}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 344
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 310
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 289
    :pswitch_0
    const v3, 0x7f0d01c1

    invoke-virtual {p0, v3}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, title:Ljava/lang/CharSequence;
    const v3, 0x7f0d01c2

    invoke-virtual {p0, v3}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, message:Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;

    invoke-direct {v1, p0}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;-><init>(Lcom/android/phone/SimContacts;)V

    .line 294
    .local v1, thread:Lcom/android/phone/SimContacts$ImportAllSimContactsThread;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 295
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 298
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, -0x2

    const v5, 0x7f0d0030

    invoke-virtual {p0, v5}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 300
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 301
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 304
    :cond_0
    iget-object v3, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 306
    invoke-virtual {v1}, Lcom/android/phone/SimContacts$ImportAllSimContactsThread;->start()V

    move v3, v6

    .line 308
    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 278
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 279
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 282
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 280
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 261
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 262
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 266
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method
