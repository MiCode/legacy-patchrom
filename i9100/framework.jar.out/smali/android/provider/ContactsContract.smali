.class public final Landroid/provider/ContactsContract;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$1;,
        Landroid/provider/ContactsContract$Intents;,
        Landroid/provider/ContactsContract$QuickContact;,
        Landroid/provider/ContactsContract$ProviderStatus;,
        Landroid/provider/ContactsContract$Settings;,
        Landroid/provider/ContactsContract$SettingsColumns;,
        Landroid/provider/ContactsContract$AggregationExceptions;,
        Landroid/provider/ContactsContract$Groups;,
        Landroid/provider/ContactsContract$GroupsColumns;,
        Landroid/provider/ContactsContract$CommonDataKinds;,
        Landroid/provider/ContactsContract$SearchSnippetColumns;,
        Landroid/provider/ContactsContract$Presence;,
        Landroid/provider/ContactsContract$StatusUpdates;,
        Landroid/provider/ContactsContract$PresenceColumns;,
        Landroid/provider/ContactsContract$PhoneLookup;,
        Landroid/provider/ContactsContract$PhoneLookupColumns;,
        Landroid/provider/ContactsContract$RawContactsEntity;,
        Landroid/provider/ContactsContract$Data;,
        Landroid/provider/ContactsContract$DataColumnsWithJoins;,
        Landroid/provider/ContactsContract$DataColumns;,
        Landroid/provider/ContactsContract$StatusColumns;,
        Landroid/provider/ContactsContract$RawContacts;,
        Landroid/provider/ContactsContract$RawContactsColumns;,
        Landroid/provider/ContactsContract$Contacts;,
        Landroid/provider/ContactsContract$ContactCounts;,
        Landroid/provider/ContactsContract$ContactNameColumns;,
        Landroid/provider/ContactsContract$DisplayNameSources;,
        Landroid/provider/ContactsContract$PhoneticNameStyle;,
        Landroid/provider/ContactsContract$FullNameStyle;,
        Landroid/provider/ContactsContract$ContactStatusColumns;,
        Landroid/provider/ContactsContract$ContactsColumns;,
        Landroid/provider/ContactsContract$ContactOptionsColumns;,
        Landroid/provider/ContactsContract$SyncColumns;,
        Landroid/provider/ContactsContract$BaseSyncColumns;,
        Landroid/provider/ContactsContract$SyncState;,
        Landroid/provider/ContactsContract$SyncStateColumns;,
        Landroid/provider/ContactsContract$Preferences;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.contacts"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final REQUESTING_PACKAGE_PARAM_KEY:Ljava/lang/String; = "requesting_package"

.field private static volatile mAdnEditable:I

.field private static volatile mSimDBReady:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    const-string v0, "content://com.android.contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 134
    sput v1, Landroid/provider/ContactsContract;->mSimDBReady:I

    .line 149
    sput v1, Landroid/provider/ContactsContract;->mAdnEditable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5742
    return-void
.end method

.method public static getAdnEditable()I
    .locals 1

    .prologue
    .line 154
    sget v0, Landroid/provider/ContactsContract;->mAdnEditable:I

    return v0
.end method

.method public static getSimDBReady()I
    .locals 1

    .prologue
    .line 139
    sget v0, Landroid/provider/ContactsContract;->mSimDBReady:I

    return v0
.end method

.method public static setAdnEditable(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 160
    sput p0, Landroid/provider/ContactsContract;->mAdnEditable:I

    .line 161
    return-void
.end method

.method public static setSimDBReady(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 145
    sput p0, Landroid/provider/ContactsContract;->mSimDBReady:I

    .line 146
    return-void
.end method
