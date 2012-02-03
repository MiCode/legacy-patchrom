.class public Lcom/android/internal/telephony/IccProvider;
.super Landroid/content/ContentProvider;
.source "IccProvider.java"


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN_EMAILS:I = 0x8

.field private static final ADN_FROM_CONTACTS:I = 0x5

.field private static final ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final DBG:Z = true

.field private static final EMAIL_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final FDN:I = 0x2

.field private static final FDN_FROM_CONTACTS:I = 0x6

.field private static final ICC_CAPA_INFO:I = 0x9

.field private static final MSISDN:I = 0x4

.field private static final MSISDN_FROM_CONTACTS:I = 0x7

.field private static final SDN:I = 0x3

.field private static final STR_EMAILS:Ljava/lang/String; = "emails"

.field private static final STR_INDEX:Ljava/lang/String; = "adn_index"

.field private static final STR_NUMBER:Ljava/lang/String; = "number"

.field private static final STR_PIN2:Ljava/lang/String; = "pin2"

.field private static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mSimulator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v3, "icc"

    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "number"

    aput-object v1, v0, v4

    const-string v1, "emails"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 200
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "emails"

    aput-object v1, v0, v6

    const-string v1, "adn_index"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    .line 205
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "name_MaxCount"

    aput-object v1, v0, v6

    const-string/jumbo v1, "name_UsedCount"

    aput-object v1, v0, v4

    const-string/jumbo v1, "name_MaxLength"

    aput-object v1, v0, v5

    const-string/jumbo v1, "number_MaxCount"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "number_UsedCount"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "number_MaxLength"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "email_MaxCount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "email_UsedCount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "email_MaxLength"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 218
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "maxCount"

    aput-object v1, v0, v6

    const-string/jumbo v1, "usedCount"

    aput-object v1, v0, v4

    const-string v1, "firstIndex"

    aput-object v1, v0, v5

    const-string/jumbo v1, "name_MaxLength"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "number_MaxLength"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    .line 242
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 246
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "adn"

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 247
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "fdn"

    invoke-virtual {v0, v3, v1, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v1, "sdn"

    invoke-virtual {v0, v3, v1, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 249
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v1, "msisdn"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "adn/from_contacts"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "fdn/from_contacts"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string/jumbo v1, "msisdn/from_contacts"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "adn/emails"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v1, "capacity"

    const/16 v2, 0x9

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    const-string v1, ""

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 875
    const/4 v8, 0x0

    .line 883
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 885
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 886
    const-string v2, ""

    const-string v3, ""

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 894
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 895
    return v8

    .line 891
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 892
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 889
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "email"
    .parameter "pin2"

    .prologue
    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 903
    const v5, 0xffff

    .line 905
    .local v5, index:I
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 907
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 908
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 916
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addIccRecordToEfByIndex: index =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 917
    return v5

    .line 913
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 914
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 911
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "pin2"

    .prologue
    const-string v1, ""

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", emails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 973
    const/4 v8, 0x0

    .line 976
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 978
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 979
    const-string v4, ""

    const-string v5, ""

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 987
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 988
    return v8

    .line 984
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 985
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 982
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private deleteIccRecordFromEfByIndex(IILjava/lang/String;)I
    .locals 8
    .parameter "efType"
    .parameter "index"
    .parameter "pin2"

    .prologue
    const-string v1, ""

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 998
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1001
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 1002
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    move v1, p1

    move v5, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1010
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteIccRecordFromEfByIndex: index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 1011
    return p2

    .line 1007
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 1008
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1005
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private getAdnLikesInfo(I)Ljava/util/ArrayList;
    .locals 10
    .parameter "efType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 839
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v7, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v9, 0x5

    new-array v6, v9, [I

    .line 842
    .local v6, recordInfo:[I
    :try_start_0
    const-string/jumbo v9, "simphonebook"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 844
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 845
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 850
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 851
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    aget v3, v6, v9

    .line 853
    .local v3, maxCount:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    const/4 v9, 0x1

    aget v8, v6, v9

    .line 855
    .local v8, usedCount:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    const/4 v9, 0x2

    aget v0, v6, v9

    .line 857
    .local v0, firstIndex:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    const/4 v9, 0x3

    aget v4, v6, v9

    .line 859
    .local v4, nameMax:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    const/4 v9, 0x4

    aget v5, v6, v9

    .line 861
    .local v5, numberMax:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    .end local v0           #firstIndex:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #maxCount:I
    .end local v4           #nameMax:I
    .end local v5           #numberMax:I
    .end local v8           #usedCount:I
    :goto_1
    return-object v7

    .line 864
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 848
    :catch_0
    move-exception v9

    goto :goto_0

    .line 847
    :catch_1
    move-exception v9

    goto :goto_0
.end method

.method private getUSIMPBCapa()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    const-string v16, "getUSIMPBCapa"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 786
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 787
    .local v14, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v15, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    invoke-direct {v15}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>()V

    .line 789
    .local v15, usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_start_0
    const-string/jumbo v16, "simphonebook"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v6

    .line 791
    .local v6, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v6, :cond_0

    .line 793
    invoke-interface {v6}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 801
    .end local v6           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v15, :cond_1

    .line 802
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v9

    .line 804
    .local v9, nameMaxCount:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    const/16 v16, 0x1

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v10

    .line 806
    .local v10, nameUsedCount:I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    const/16 v16, 0x1

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    .line 808
    .local v8, nameLength:I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    const/16 v16, 0x2

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v12

    .line 811
    .local v12, numberMaxCount:I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    const/16 v16, 0x2

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v13

    .line 813
    .local v13, numberUsedCount:I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    const/16 v16, 0x2

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v11

    .line 815
    .local v11, numberLength:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    const/16 v16, 0x4

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v3

    .line 818
    .local v3, emailMaxCount:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    const/16 v16, 0x4

    const/16 v17, 0x3

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .line 820
    .local v4, emailUsedCount:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    const/16 v16, 0x4

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v2

    .line 822
    .local v2, emailLength:I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    .end local v2           #emailLength:I
    .end local v3           #emailMaxCount:I
    .end local v4           #emailUsedCount:I
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8           #nameLength:I
    .end local v9           #nameMaxCount:I
    .end local v10           #nameUsedCount:I
    .end local v11           #numberLength:I
    .end local v12           #numberMaxCount:I
    .end local v13           #numberUsedCount:I
    :goto_1
    return-object v14

    .line 797
    :catch_0
    move-exception v16

    move-object/from16 v5, v16

    .line 798
    .local v5, ex:Ljava/lang/SecurityException;
    invoke-virtual {v5}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 826
    .end local v5           #ex:Ljava/lang/SecurityException;
    :cond_1
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 795
    :catch_1
    move-exception v16

    goto/16 :goto_0
.end method

.method private loadEmailRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1074
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1075
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .local v2, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    .line 1077
    .local v4, emails:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v0

    .line 1078
    .local v0, adnIndex:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1082
    .local v6, index:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1083
    move-object v1, v4

    .local v1, arr$:[Ljava/lang/String;
    array-length v7, v1

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v1, v5

    .line 1084
    .local v3, email:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1086
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1087
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1096
    .end local v0           #adnIndex:I
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #email:Ljava/lang/String;
    .end local v4           #emails:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #index:Ljava/lang/String;
    .end local v7           #len$:I
    :cond_1
    return-void
.end method

.method private loadFromEf(IZ)Ljava/util/ArrayList;
    .locals 10
    .parameter "efType"
    .parameter "isEmailOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v5, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    const/4 v1, 0x0

    .line 743
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/AdnRecord;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadFromEf: efType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 746
    :try_start_0
    const-string/jumbo v8, "simphonebook"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v4

    .line 748
    .local v4, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v4, :cond_0

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 750
    .local v6, start:J
    invoke-interface {v4, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v1

    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .end local v4           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v6           #start:J
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 762
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 763
    .local v0, N:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adnRecords.size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 764
    if-nez p2, :cond_1

    .line 765
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_3

    .line 766
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/IccProvider;->loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V

    .line 765
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 756
    .end local v0           #N:I
    .end local v3           #i:I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 757
    .local v2, ex:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 769
    .end local v2           #ex:Ljava/lang/SecurityException;
    .restart local v0       #N:I
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 770
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/AdnRecord;

    invoke-direct {p0, v8, v5}, Lcom/android/internal/telephony/IccProvider;->loadEmailRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V

    .line 769
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 776
    .end local v0           #N:I
    .end local v3           #i:I
    :cond_2
    const-string v8, "IccProvider"

    const-string v9, "Cannot load ADN records"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 779
    :cond_3
    const-string v8, "loadFromEf: return results"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 780
    return-object v5

    .line 754
    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method private loadRecord(Lcom/android/internal/telephony/AdnRecord;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "record"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/AdnRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1024
    .local p2, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1025
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1026
    .local v3, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 1027
    .local v1, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v10

    .line 1028
    .local v10, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .line 1029
    .local v6, emails:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v0

    .line 1030
    .local v0, adnIndex:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1034
    .local v8, index:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 1035
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    :goto_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1040
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1046
    .local v5, emailString:Ljava/lang/StringBuilder;
    if-eqz v6, :cond_4

    .line 1047
    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v9, :cond_2

    aget-object v4, v2, v7

    .line 1049
    .local v4, email:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1050
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1037
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #email:Ljava/lang/String;
    .end local v5           #emailString:Ljava/lang/StringBuilder;
    .end local v7           #i$:I
    .end local v9           #len$:I
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1042
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1052
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v5       #emailString:Ljava/lang/StringBuilder;
    .restart local v7       #i$:I
    .restart local v9       #len$:I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    :goto_3
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1059
    .end local v0           #adnIndex:I
    .end local v1           #alphaTag:Ljava/lang/String;
    .end local v3           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #emailString:Ljava/lang/StringBuilder;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v8           #index:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    :cond_3
    return-void

    .line 1054
    .restart local v0       #adnIndex:I
    .restart local v1       #alphaTag:Ljava/lang/String;
    .restart local v3       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #emailString:Ljava/lang/StringBuilder;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v8       #index:Ljava/lang/String;
    .restart local v10       #number:Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1062
    const-string v0, "IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inVal"

    .prologue
    const/16 v4, 0x27

    const/4 v3, 0x1

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 516
    .local v0, len:I
    move-object v1, p1

    .line 518
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    sub-int v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    .line 519
    sub-int v2, v0, v3

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 522
    :cond_0
    return-object v1
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efType"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "pin2"

    .prologue
    .line 923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEf: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 926
    const/4 v8, 0x0

    .line 929
    .local v8, success:Z
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 931
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 932
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 940
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 941
    return v8

    .line 937
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 938
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 935
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .parameter "efType"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "newEmail"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: efType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newnumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 952
    :try_start_0
    const-string/jumbo v1, "simphonebook"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 954
    .local v0, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 955
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p5

    .line 963
    .end local v0           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateIccRecordInEfByIndex: index =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 964
    return p5

    .line 960
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 961
    .local v7, ex:Ljava/lang/SecurityException;
    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 958
    .end local v7           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 23
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 528
    const/4 v10, -0x1

    .line 529
    .local v10, index:I
    const/4 v11, 0x0

    .line 530
    .local v11, isFromContacts:Z
    const-string v4, "delete"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 532
    sget-object v4, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 533
    .local v13, match:I
    packed-switch v13, :pswitch_data_0

    .line 562
    :pswitch_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot insert into URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 535
    :pswitch_1
    const/16 v5, 0x6f3a

    .line 567
    .local v5, efType:I
    :goto_0
    const/4 v6, 0x0

    .line 568
    .local v6, tag:Ljava/lang/String;
    const/4 v7, 0x0

    .line 569
    .local v7, number:Ljava/lang/String;
    const/4 v8, 0x0

    .line 570
    .local v8, emails:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 572
    .local v9, pin2:Ljava/lang/String;
    const-string v4, "AND"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 573
    .local v19, tokens:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move v14, v0

    .line 575
    .end local v11           #isFromContacts:Z
    .local v14, n:I
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_7

    .line 576
    aget-object v16, v19, v14

    .line 577
    .local v16, param:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parsing \'"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "\'"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 579
    const-string v4, "="

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 580
    .local v15, pair:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v15, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 581
    .local v12, key:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v15, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 583
    .local v20, val:Ljava/lang/String;
    array-length v4, v15

    const/4 v11, 0x2

    if-eq v4, v11, :cond_1

    .line 584
    const-string/jumbo v4, "tag"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 586
    const-string v4, "="

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 587
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 595
    :cond_1
    const-string/jumbo v4, "tag"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 596
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 597
    const-string/jumbo v4, "null"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 598
    const-string v4, "Change null"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 599
    const-string v6, ""

    goto/16 :goto_1

    .line 539
    .end local v5           #efType:I
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    .end local v8           #emails:[Ljava/lang/String;
    .end local v9           #pin2:Ljava/lang/String;
    .end local v12           #key:Ljava/lang/String;
    .end local v14           #n:I
    .end local v15           #pair:[Ljava/lang/String;
    .end local v16           #param:Ljava/lang/String;
    .end local v19           #tokens:[Ljava/lang/String;
    .end local v20           #val:Ljava/lang/String;
    .restart local v11       #isFromContacts:Z
    :pswitch_2
    const/16 v5, 0x6f3b

    .line 540
    .restart local v5       #efType:I
    goto/16 :goto_0

    .line 543
    .end local v5           #efType:I
    :pswitch_3
    const/16 v5, 0x6f40

    .line 544
    .restart local v5       #efType:I
    goto/16 :goto_0

    .line 547
    .end local v5           #efType:I
    :pswitch_4
    const/16 v5, 0x6f3a

    .line 548
    .restart local v5       #efType:I
    const/4 v11, 0x1

    .line 549
    goto/16 :goto_0

    .line 552
    .end local v5           #efType:I
    :pswitch_5
    const/16 v5, 0x6f3b

    .line 553
    .restart local v5       #efType:I
    const/4 v11, 0x1

    .line 554
    goto/16 :goto_0

    .line 557
    .end local v5           #efType:I
    :pswitch_6
    const/16 v5, 0x6f40

    .line 558
    .restart local v5       #efType:I
    const/4 v11, 0x1

    .line 559
    goto/16 :goto_0

    .line 590
    .end local v11           #isFromContacts:Z
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v7       #number:Ljava/lang/String;
    .restart local v8       #emails:[Ljava/lang/String;
    .restart local v9       #pin2:Ljava/lang/String;
    .restart local v12       #key:Ljava/lang/String;
    .restart local v14       #n:I
    .restart local v15       #pair:[Ljava/lang/String;
    .restart local v16       #param:Ljava/lang/String;
    .restart local v19       #tokens:[Ljava/lang/String;
    .restart local v20       #val:Ljava/lang/String;
    :cond_2
    const-string v4, "IccProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resolve: bad whereClause parameter: "

    .end local v12           #key:Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 601
    .restart local v12       #key:Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "number"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 603
    const-string/jumbo v4, "null"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 604
    const-string v4, "Change null"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 605
    const-string v7, ""

    goto/16 :goto_1

    .line 608
    :cond_4
    const-string v4, "emails"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 610
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 611
    :cond_5
    const-string/jumbo v4, "pin2"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 612
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 613
    :cond_6
    const-string v4, "adn_index"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 614
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move v10, v0

    goto/16 :goto_1

    .line 624
    .end local v12           #key:Ljava/lang/String;
    .end local v15           #pair:[Ljava/lang/String;
    .end local v16           #param:Ljava/lang/String;
    .end local v20           #val:Ljava/lang/String;
    :cond_7
    const/16 v4, 0x6f3b

    if-ne v5, v4, :cond_8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 625
    const/4 v4, 0x0

    .line 644
    :goto_2
    return v4

    .line 629
    :cond_8
    if-gez v10, :cond_c

    .line 631
    if-nez v6, :cond_9

    .line 632
    const-string v6, ""

    .line 633
    :cond_9
    if-nez v7, :cond_a

    .line 634
    const-string v7, ""

    :cond_a
    move-object/from16 v4, p0

    .line 635
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 636
    .local v18, success:Z
    if-nez v18, :cond_b

    .line 637
    const/4 v4, 0x0

    goto :goto_2

    .line 639
    :cond_b
    const/4 v4, 0x1

    goto :goto_2

    .line 643
    .end local v18           #success:Z
    :cond_c
    move-object/from16 v0, p0

    move v1, v5

    move v2, v10

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccProvider;->deleteIccRecordFromEfByIndex(IILjava/lang/String;)I

    move-result v17

    .local v17, ret_index:I
    move/from16 v4, v17

    .line 644
    goto :goto_2

    .line 533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 388
    sget-object v0, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 20
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 403
    const/4 v7, 0x0

    .line 404
    .local v7, pin2:Ljava/lang/String;
    const/16 v16, 0x0

    .line 407
    .local v16, isFromContacts:Z
    const-string v2, "insert"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 409
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    .line 410
    .local v17, match:I
    packed-switch v17, :pswitch_data_0

    .line 441
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot insert into URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 412
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 445
    .local v3, efType:I
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 447
    .local v5, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 449
    .local v6, email:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    const-string v2, "emails"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 452
    :cond_0
    if-nez v4, :cond_1

    .line 453
    const-string v4, ""

    .line 454
    :cond_1
    if-nez v5, :cond_2

    .line 455
    const-string v5, ""

    .line 456
    :cond_2
    if-nez v6, :cond_3

    .line 457
    const-string v6, ""

    .line 461
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v14, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    .local v14, buf:Ljava/lang/StringBuilder;
    if-eqz v16, :cond_4

    move-object/from16 v2, p0

    .line 464
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 466
    .local v15, index:I
    packed-switch v17, :pswitch_data_1

    .line 474
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " insert ["

    .end local v3           #efType:I
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 503
    .end local v15           #index:I
    :goto_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .local v18, resultUri:Landroid/net/Uri;
    move-object/from16 v2, v18

    .line 511
    .end local v18           #resultUri:Landroid/net/Uri;
    :goto_3
    return-object v2

    .line 416
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #number:Ljava/lang/String;
    .end local v6           #email:Ljava/lang/String;
    .end local v14           #buf:Ljava/lang/StringBuilder;
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 417
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 418
    goto :goto_0

    .line 421
    .end local v3           #efType:I
    :pswitch_3
    const/16 v3, 0x6f40

    .line 422
    .restart local v3       #efType:I
    goto/16 :goto_0

    .line 425
    .end local v3           #efType:I
    :pswitch_4
    const/16 v3, 0x6f3a

    .line 426
    .restart local v3       #efType:I
    const/16 v16, 0x1

    .line 427
    goto/16 :goto_0

    .line 430
    .end local v3           #efType:I
    :pswitch_5
    const/16 v3, 0x6f3b

    .line 431
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 432
    const/16 v16, 0x1

    .line 433
    goto/16 :goto_0

    .line 436
    .end local v3           #efType:I
    :pswitch_6
    const/16 v3, 0x6f40

    .line 437
    .restart local v3       #efType:I
    const/16 v16, 0x1

    .line 438
    goto/16 :goto_0

    .line 468
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #number:Ljava/lang/String;
    .restart local v6       #email:Ljava/lang/String;
    .restart local v14       #buf:Ljava/lang/StringBuilder;
    .restart local v15       #index:I
    :pswitch_7
    const-string v2, "[hypathia] insert :ADN_FROM_CONTACTS"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 469
    const-string v2, "adn/"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 477
    .end local v15           #index:I
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v8, p0

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/IccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    .line 478
    .local v19, success:Z
    if-nez v19, :cond_5

    .line 479
    const/4 v2, 0x0

    goto :goto_3

    .line 482
    :cond_5
    packed-switch v17, :pswitch_data_2

    .line 497
    :goto_4
    :pswitch_8
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 484
    :pswitch_9
    const-string v2, "adn/"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 488
    :pswitch_a
    const-string v2, "fdn/"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 492
    :pswitch_b
    const-string/jumbo v2, "msisdn/"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 466
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_7
    .end packed-switch

    .line 482
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 263
    const-string/jumbo v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, device:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    .line 271
    :goto_0
    return v2

    .line 268
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 279
    iget-boolean v12, p0, Lcom/android/internal/telephony/IccProvider;->mSimulator:Z

    if-nez v12, :cond_4

    .line 280
    sget-object v12, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 355
    :pswitch_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 282
    :pswitch_1
    const/16 v12, 0x6f3a

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 383
    .local v10, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :goto_0
    new-instance v12, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v13, Lcom/android/internal/telephony/IccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v12, v13, v10}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_1
    return-object v12

    .line 286
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_2
    const/16 v12, 0x6f3b

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 287
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 290
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_3
    const/16 v12, 0x6f49

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 291
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 294
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_4
    const/16 v12, 0x6f40

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 295
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    goto :goto_0

    .line 298
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_5
    const/16 v12, 0x6f3a

    const/4 v13, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/internal/telephony/IccProvider;->loadFromEf(IZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 299
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v12, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v13, Lcom/android/internal/telephony/IccProvider;->EMAIL_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v12, v13, v10}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 306
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :pswitch_6
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 307
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 309
    :cond_0
    const-string v12, "="

    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 310
    .local v9, pair:[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 311
    .local v8, key:Ljava/lang/String;
    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 313
    .local v11, value:Ljava/lang/String;
    const-string v12, "EF_TYPE"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 314
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 315
    .local v7, efType:I
    sparse-switch v7, :sswitch_data_0

    .line 344
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 318
    :sswitch_0
    const-string/jumbo v3, "ril.ICC_TYPE"

    .line 319
    .local v3, ICCTYPE:Ljava/lang/String;
    const-string v5, "1"

    .line 320
    .local v5, TWOG:Ljava/lang/String;
    const-string v4, "2"

    .line 321
    .local v4, THREEG:Ljava/lang/String;
    const-string/jumbo v12, "ril.ICC_TYPE"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, ADNTYPE:Ljava/lang/String;
    const-string v12, "1"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 323
    const/16 v12, 0x6f3a

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 324
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v12, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v13, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v12, v13, v10}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 325
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_1
    const-string v12, "2"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 326
    invoke-direct {p0}, Lcom/android/internal/telephony/IccProvider;->getUSIMPBCapa()Ljava/util/ArrayList;

    move-result-object v10

    .line 327
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v12, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v13, Lcom/android/internal/telephony/IccProvider;->ADN_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v12, v13, v10}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 332
    .end local v2           #ADNTYPE:Ljava/lang/String;
    .end local v3           #ICCTYPE:Ljava/lang/String;
    .end local v4           #THREEG:Ljava/lang/String;
    .end local v5           #TWOG:Ljava/lang/String;
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_2
    :sswitch_1
    const/16 v12, 0x6f3b

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 333
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v12, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v13, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v12, v13, v10}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 336
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :sswitch_2
    const/16 v12, 0x6f49

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 337
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v12, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v13, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v12, v13, v10}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 340
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :sswitch_3
    const/16 v12, 0x6f40

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/IccProvider;->getAdnLikesInfo(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 341
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v12, Lcom/android/internal/telephony/ArrayListCursor;

    sget-object v13, Lcom/android/internal/telephony/IccProvider;->ADN_LIKE_CAPA_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v12, v13, v10}, Lcom/android/internal/telephony/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 349
    .end local v7           #efType:I
    .end local v10           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    :cond_3
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown URL "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 359
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #pair:[Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/util/ArrayList;

    const/4 v12, 0x4

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    .restart local v10       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v6, contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "Ron Stevens/H"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    const-string v12, "512-555-5038"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .restart local v6       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "Ron Stevens/M"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    const-string v12, "512-555-8305"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .restart local v6       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "Melissa Owens"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v12, "512-555-8305"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .restart local v6       #contact:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "Directory Assistence"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const-string v12, "411"

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 315
    :sswitch_data_0
    .sparse-switch
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_1
        0x6f40 -> :sswitch_3
        0x6f49 -> :sswitch_2
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 653
    const/4 v8, 0x0

    .line 654
    .local v8, pin2:Ljava/lang/String;
    const/4 v7, -0x1

    .line 655
    .local v7, index:I
    const/16 v17, 0x0

    .line 656
    .local v17, isFromContacts:Z
    const-string/jumbo v2, "update"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V

    .line 658
    sget-object v2, Lcom/android/internal/telephony/IccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 659
    .local v18, match:I
    packed-switch v18, :pswitch_data_0

    .line 690
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot insert into URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 661
    :pswitch_1
    const/16 v3, 0x6f3a

    .line 694
    .local v3, efType:I
    :goto_0
    const-string/jumbo v2, "tag"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 695
    .local v11, tag:Ljava/lang/String;
    const-string/jumbo v2, "number"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 696
    .local v12, number:Ljava/lang/String;
    const/16 v16, 0x0

    .line 697
    .local v16, emails:[Ljava/lang/String;
    const-string/jumbo v2, "newTag"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 698
    .local v4, newTag:Ljava/lang/String;
    const-string/jumbo v2, "newNumber"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 699
    .local v5, newNumber:Ljava/lang/String;
    const/16 v19, 0x0

    .line 700
    .local v19, newEmails:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 702
    .local v6, email:Ljava/lang/String;
    const-string/jumbo v2, "newEmails"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 703
    const-string/jumbo v2, "newEmails"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 706
    :cond_0
    if-nez v6, :cond_1

    .line 707
    const-string v6, ""

    .line 708
    :cond_1
    if-nez v11, :cond_2

    .line 709
    const-string v11, ""

    .line 710
    :cond_2
    if-nez v12, :cond_3

    .line 711
    const-string v12, ""

    .line 712
    :cond_3
    if-nez v4, :cond_4

    .line 713
    const-string v4, ""

    .line 714
    :cond_4
    if-nez v5, :cond_5

    .line 715
    const-string v5, ""

    .line 717
    :cond_5
    const-string v2, "adn_index"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 718
    const-string v2, "adn_index"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 722
    :cond_6
    if-eqz v17, :cond_7

    move-object/from16 v2, p0

    .line 724
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEfByIndex(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v7

    move v2, v7

    .line 733
    :goto_1
    return v2

    .line 665
    .end local v3           #efType:I
    .end local v4           #newTag:Ljava/lang/String;
    .end local v5           #newNumber:Ljava/lang/String;
    .end local v6           #email:Ljava/lang/String;
    .end local v11           #tag:Ljava/lang/String;
    .end local v12           #number:Ljava/lang/String;
    .end local v16           #emails:[Ljava/lang/String;
    .end local v19           #newEmails:[Ljava/lang/String;
    :pswitch_2
    const/16 v3, 0x6f3b

    .line 666
    .restart local v3       #efType:I
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 667
    goto/16 :goto_0

    .line 670
    .end local v3           #efType:I
    :pswitch_3
    const/16 v3, 0x6f40

    .line 671
    .restart local v3       #efType:I
    goto/16 :goto_0

    .line 674
    .end local v3           #efType:I
    :pswitch_4
    const/16 v3, 0x6f3a

    .line 675
    .restart local v3       #efType:I
    const/16 v17, 0x1

    .line 676
    goto/16 :goto_0

    .line 679
    .end local v3           #efType:I
    :pswitch_5
    const-string/jumbo v2, "pin2"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 680
    const/16 v3, 0x6f3b

    .line 681
    .restart local v3       #efType:I
    const/16 v17, 0x1

    .line 682
    goto/16 :goto_0

    .line 685
    .end local v3           #efType:I
    :pswitch_6
    const/16 v3, 0x6f40

    .line 686
    .restart local v3       #efType:I
    const/16 v17, 0x1

    .line 687
    goto/16 :goto_0

    .restart local v4       #newTag:Ljava/lang/String;
    .restart local v5       #newNumber:Ljava/lang/String;
    .restart local v6       #email:Ljava/lang/String;
    .restart local v11       #tag:Ljava/lang/String;
    .restart local v12       #number:Ljava/lang/String;
    .restart local v16       #emails:[Ljava/lang/String;
    .restart local v19       #newEmails:[Ljava/lang/String;
    :cond_7
    move-object/from16 v9, p0

    move v10, v3

    move-object v13, v4

    move-object v14, v5

    move-object v15, v8

    .line 727
    invoke-direct/range {v9 .. v15}, Lcom/android/internal/telephony/IccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    .line 730
    .local v20, success:Z
    if-nez v20, :cond_8

    .line 731
    const/4 v2, 0x0

    goto :goto_1

    .line 733
    :cond_8
    const/4 v2, 0x1

    goto :goto_1

    .line 659
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
