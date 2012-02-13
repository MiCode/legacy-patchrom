.class public Lcom/android/contacts/ContactsListActivity;
.super Landroid/app/ListActivity;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/EditableListView$EditModeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;,
        Lcom/android/contacts/ContactsListActivity$ContactListItemCache;,
        Lcom/android/contacts/ContactsListActivity$QueryHandler;,
        Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;,
        Lcom/android/contacts/ContactsListActivity$DeleteClickListener;,
        Lcom/android/contacts/ContactsListActivity$ContactsSearchActivity;,
        Lcom/android/contacts/ContactsListActivity$JoinContactActivity;
    }
.end annotation


# static fields
.field private static final CONTACTS_CONTENT_URI_WITH_LETTER_COUNTS:Landroid/net/Uri;

.field static final CONTACTS_SUMMARY_FILTER_PROJECTION:[Ljava/lang/String;

.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field static final CONTACTS_SUMMARY_PROJECTION_FROM_EMAIL:[Ljava/lang/String;

.field static final LEGACY_PEOPLE_PROJECTION:[Ljava/lang/String;

.field static final LEGACY_PHONES_PROJECTION:[Ljava/lang/String;

.field static final LEGACY_POSTALS_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field static final POSTALS_PROJECTION:[Ljava/lang/String;

.field static final RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final sContactsIdMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAlwaysDoFilterEvenWhenFilterIsEmpty:Z

.field private mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

.field private mContactsPrefs:Lcom/android/contacts/ui/ContactsPreferences;

.field private mCreateNew:Landroid/view/View;

.field private mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

.field private mDisplayOnlyPhones:Z

.field private mDisplayOrder:I

.field private mDrawThumb:Z

.field private mEnablePhotoBefore:Z

.field private mFastIndexer:Lcom/android/contacts/ui/widget/AlphabetFastIndexer;

.field private mFooterView:Landroid/view/View;

.field private mGroupDelta:Lcom/android/contacts/model/GroupDelta;

.field private mGroupEditMode:Z

.field private mGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupUri:Landroid/net/Uri;

.field private mHighlightWhenScrolling:Z

.field private mHighlightingAnimation:Lcom/android/contacts/TextHighlightingAnimation;

.field private mIconSize:I

.field private mInitialFilter:Ljava/lang/String;

.field private mIsActive:Z

.field private mIsContentChanged:Z

.field private mIsMiliaoInstalled:Z

.field private mIsScrolling:Z

.field private mJoinModeShowAllContacts:Z

.field private mJustCreated:Z

.field private mList:Landroid/widget/EditableListView;

.field private mListState:Landroid/os/Parcelable;

.field private mMarkedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMergedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/GroupDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mMiliaoCard:Landroid/view/View;

.field mMode:I

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

.field private mPreviousThumb:Ljava/lang/String;

.field private mProviderStatus:I

.field private mProviderStatusObserver:Landroid/database/ContentObserver;

.field private mQueryAggregateId:J

.field private mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

.field private mQueryMode:I

.field private mReadOnlySourcesCnt:I

.field private mSearchEditText:Lcom/android/contacts/SearchEditText;

.field private mSearchInitiated:Z

.field private mSearchMode:Z

.field private mSearchResultsMode:Z

.field mSelectedContactUri:Landroid/net/Uri;

.field private mShortcutAction:Ljava/lang/String;

.field private mShowSearchBox:Z

.field private mSortOrder:I

.field private mTab:Lcom/android/contacts/DialtactsActivity;

.field private mWritableRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mWritableSourcesCnt:I

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field final sLookupProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "display_name"

    .line 202
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_CONTENT_URI_WITH_LETTER_COUNTS:Landroid/net/Uri;

    .line 310
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v3, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "sort_key"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "company"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "miliao_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    .line 326
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v3, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "sort_key"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION_FROM_EMAIL:[Ljava/lang/String;

    .line 342
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v3, v0, v5

    const-string v1, "display_name_alt"

    aput-object v1, v0, v6

    const-string v1, "sort_key"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "company"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "miliao_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "snippet_mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "snippet_data1"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "snippet_data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_FILTER_PROJECTION:[Ljava/lang/String;

    .line 362
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v3, v0, v5

    const-string v1, "display_name"

    aput-object v3, v0, v6

    const-string v1, "display_name"

    aput-object v3, v0, v7

    const/4 v1, 0x4

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "times_contacted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_PEOPLE_PROJECTION:[Ljava/lang/String;

    .line 389
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 398
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_PHONES_PROJECTION:[Ljava/lang/String;

    .line 413
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data2"

    aput-object v1, v0, v5

    const-string v1, "data3"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->POSTALS_PROJECTION:[Ljava/lang/String;

    .line 421
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "data"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_POSTALS_PROJECTION:[Ljava/lang/String;

    .line 428
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "account_type"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 530
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/contacts/ContactsListActivity;->sContactsIdMatcher:Landroid/content/UriMatcher;

    .line 531
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->sContactsIdMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.contacts"

    const-string v2, "contacts/#"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 532
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 447
    const v0, 0x8a00004

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    .line 470
    iput-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    .line 477
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 483
    iput v2, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    .line 493
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;

    .line 497
    iput-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mDrawThumb:Z

    .line 517
    iput-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    .line 525
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lookup"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->sLookupProjection:[Ljava/lang/String;

    .line 599
    iput-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    .line 600
    iput-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mFooterView:Landroid/view/View;

    .line 602
    new-instance v0, Lcom/android/contacts/ContactsListActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactsListActivity$1;-><init>(Lcom/android/contacts/ContactsListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatusObserver:Landroid/database/ContentObserver;

    .line 960
    new-instance v0, Lcom/android/contacts/ContactsListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactsListActivity$2;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 3025
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->deleteContact(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactsListActivity;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->checkProviderState(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/ContactsListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/contacts/ContactsListActivity;->mIsContentChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mJoinModeShowAllContacts:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/ContactsListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/ContactsListActivity;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/ContactsListActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/ContactsListActivity;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/ContactsListActivity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getShowAllContactsLabelCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->createNew()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getShowGuidePopupWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/ContactsListActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/ContactsListActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->setShowGuidePopupWindow(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/contacts/ContactsListActivity;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/contacts/ContactsListActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/contacts/ContactsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getEnablePhoto()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/contacts/ContactsListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/contacts/ContactsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getSummaryDisplayNameColumnIndex()I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightWhenScrolling:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/ContactsListActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsActive:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/ContactsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/TextHighlightingAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightingAnimation:Lcom/android/contacts/TextHighlightingAnimation;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/ContactPhotoLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/ContactsListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/SearchEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/contacts/ContactsListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/ContactsListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/contacts/ContactsListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/contacts/ContactsListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/contacts/ContactsListActivity;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/ContactsListActivity;)Lcom/android/contacts/model/GroupDelta;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/ContactsListActivity;Landroid/net/Uri;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactsListActivity;->setAsStar(Landroid/net/Uri;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/ContactsListActivity;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method private buildMergedGroupIds(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const-string v3, "\'"

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1414
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1415
    if-lez v1, :cond_0

    .line 1416
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    :cond_0
    const-string v2, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1420
    const-string v2, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1422
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 2585
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private buildUserGroupUri(Ljava/lang/String;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 1409
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1410
    return-void
.end method

.method private buildUserGroupUri(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1404
    .local p1, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_GROUP_IDS_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->buildMergedGroupIds(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    .line 1406
    return-void
.end method

.method private checkProviderState(Z)Z
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 1522
    const v1, 0x7f070050

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1523
    if-nez v8, :cond_0

    move v1, v11

    .line 1582
    :goto_0
    return v1

    .line 1527
    :cond_0
    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    .line 1531
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v12, [Ljava/lang/String;

    const-string v5, "status"

    aput-object v5, v3, v10

    const-string v5, "data1"

    aput-object v5, v3, v11

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1535
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1536
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1537
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    if-eq v2, v3, :cond_1

    .line 1538
    iput v2, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    packed-switch v2, :pswitch_data_0

    .line 1575
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1578
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    if-ne v1, v12, :cond_3

    move v1, v10

    :goto_2
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1582
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    if-nez v1, :cond_4

    move v1, v11

    goto :goto_0

    .line 1541
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetInvalidated()V

    .line 1542
    if-eqz p1, :cond_1

    .line 1543
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1575
    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1548
    :pswitch_1
    const v2, 0x7f0b00f8

    :try_start_2
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1549
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1550
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 1554
    :pswitch_2
    const-string v2, "ContactsListActivity"

    const-string v3, "Provider is upgrading, wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const v2, 0x7f0b00f9

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1556
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1557
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 1561
    :pswitch_3
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1562
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00fa

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1564
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1565
    invoke-direct {p0, v8}, Lcom/android/contacts/ContactsListActivity;->configureImportFailureView(Landroid/view/View;)V

    .line 1566
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1567
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 1572
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1578
    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    :cond_4
    move v1, v10

    .line 1582
    goto/16 :goto_0

    .line 1539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private configureImportFailureView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1587
    new-instance v1, Lcom/android/contacts/ContactsListActivity$8;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$8;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    .line 1605
    const v0, 0x7f070051

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1606
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1608
    const v0, 0x7f070052

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 1609
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1610
    return-void
.end method

.method private createNew()V
    .locals 4

    .prologue
    const/high16 v3, 0x1000

    const-string v2, "android.intent.action.INSERT"

    .line 1305
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28c0003a

    if-ne v0, v1, :cond_1

    .line 1306
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startAddMemberActivity()V

    .line 1326
    :goto_0
    return-void

    .line 1307
    :cond_1
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00023

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28200014

    if-ne v0, v1, :cond_3

    .line 1308
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startFavoritePickerActivity()V

    goto :goto_0

    .line 1309
    :cond_3
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x667fffd3

    if-ne v0, v1, :cond_5

    .line 1310
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1311
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1312
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1313
    if-eqz v1, :cond_4

    .line 1314
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1317
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1318
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_0

    .line 1319
    :cond_5
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    .line 1320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1321
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1323
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1324
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private deleteContact(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 541
    if-eqz p1, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 546
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/contacts/ContactsUtils;->updateDeleteContactCallLogs(Landroid/content/Context;J)V

    .line 549
    :cond_0
    return-void
.end method

.method private deleteSelection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2147
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    .line 2159
    :goto_0
    return v0

    .line 2151
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 2152
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2153
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 2154
    if-eqz v0, :cond_1

    .line 2155
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->doContactDelete(Landroid/net/Uri;)V

    .line 2156
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2159
    goto :goto_0
.end method

.method private doSearch()V
    .locals 5

    .prologue
    const-string v4, "phone"

    .line 1839
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    .line 1840
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1875
    :goto_0
    return-void

    .line 1844
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/SearchResultsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1845
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1846
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1847
    if-eqz v2, :cond_1

    .line 1848
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1851
    :cond_1
    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1852
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v3, -0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_5

    .line 1853
    const-string v2, "com.android.contacts.INTERNAL_SEARCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1854
    const-string v2, "shortcutAction"

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1855
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1856
    const-string v2, "android.intent.action.CALL"

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.SENDTO"

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1858
    :cond_2
    const-string v2, "phone"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1870
    :cond_3
    :goto_1
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1861
    :cond_4
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 1863
    :pswitch_0
    const-string v2, "email"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1866
    :pswitch_1
    const-string v2, "phone"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1872
    :cond_5
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1873
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1861
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAddToGroupFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "filter"

    .prologue
    .line 2569
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2570
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2572
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "filter"

    .prologue
    .line 2555
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2556
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2561
    .local v0, baseUri:Landroid/net/Uri;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->calcDisplaySectionHeaders()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2562
    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 2564
    :goto_1
    return-object v1

    .line 2558
    .end local v0           #baseUri:Landroid/net/Uri;
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .restart local v0       #baseUri:Landroid/net/Uri;
    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 2564
    goto :goto_1
.end method

.method private getContactSelection()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "data2"

    .line 2535
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x36ffffce

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data2"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "data2"

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2550
    :goto_0
    return-object v0

    .line 2539
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x7fbfffa6

    if-ne v0, v1, :cond_2

    .line 2540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2542
    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v1, :cond_1

    .line 2543
    const-string v1, "has_phone_number=1 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2546
    :cond_1
    const-string v1, "starred=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2547
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2550
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v0, :cond_3

    const-string v0, "has_phone_number=1"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContactUri(I)Landroid/net/Uri;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2419
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2420
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position not in list bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2423
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2424
    if-nez v0, :cond_1

    .line 2425
    const/4 v0, 0x0

    .line 2439
    :goto_0
    return-object v0

    .line 2428
    :cond_1
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 2437
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2438
    const/16 v3, 0x8

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2439
    invoke-static {v1, v2, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2431
    :sswitch_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2432
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2428
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7effffd5 -> :sswitch_0
        -0x6effffd4 -> :sswitch_0
    .end sparse-switch
.end method

.method private getEnablePhoto()Z
    .locals 3

    .prologue
    .line 3020
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3021
    const-string v1, "pref_key_enable_contact_photo"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 2590
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 2591
    iget-wide v1, p0, Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2592
    const-string v1, "suggestions"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2593
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2594
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2596
    :cond_0
    const-string v1, "limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2597
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "filter"

    .prologue
    .line 2577
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2578
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2580
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getSelectedUri(I)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 2449
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position not in list bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2453
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 2454
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v2, :sswitch_data_0

    .line 2473
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2457
    :sswitch_0
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2461
    :sswitch_1
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2464
    :sswitch_2
    sget-object v2, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2467
    :sswitch_3
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2470
    :sswitch_4
    sget-object v2, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2454
    :sswitch_data_0
    .sparse-switch
        -0x7effffd5 -> :sswitch_0
        -0x6effffd4 -> :sswitch_0
        -0x5fffffb0 -> :sswitch_1
        -0x36ffffce -> :sswitch_1
        -0x1fffffcd -> :sswitch_2
        -0x1fffffc9 -> :sswitch_3
        -0x1fffffc8 -> :sswitch_4
    .end sparse-switch
.end method

.method private getShowAllContactsLabelCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "projection"

    .prologue
    .line 2826
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2827
    .local v0, matrixCursor:Landroid/database/MatrixCursor;
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 2829
    .local v1, row:[Ljava/lang/Object;
    const/4 v2, 0x0

    const-wide/16 v3, -0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2830
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2831
    return-object v0
.end method

.method private getShowGuidePopupWindow()Z
    .locals 3

    .prologue
    .line 3885
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3886
    const-string v1, "show_guide_popup_window"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getSortOrder([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2601
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mSortOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2602
    const-string v0, "sort_key"

    .line 2604
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "sort_key_alt"

    goto :goto_0
.end method

.method private getSummaryDisplayNameColumnIndex()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1256
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getTextFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0}, Lcom/android/contacts/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1616
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUriToQuery()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 2350
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 2409
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t generate URI: Unsupported Mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2352
    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2406
    :goto_0
    return-object v0

    .line 2355
    :sswitch_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2363
    :sswitch_2
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_CONTENT_URI_WITH_LETTER_COUNTS:Landroid/net/Uri;

    goto :goto_0

    .line 2366
    :sswitch_3
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2370
    :sswitch_4
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2373
    :sswitch_5
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2376
    :sswitch_6
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2379
    :sswitch_7
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2382
    :sswitch_8
    sget-object v0, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2385
    :sswitch_9
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2386
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2388
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2389
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2392
    :cond_1
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_CONTENT_URI_WITH_LETTER_COUNTS:Landroid/net/Uri;

    goto :goto_0

    .line 2397
    :sswitch_a
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2400
    :sswitch_b
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 2406
    :sswitch_c
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x140003b

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/contacts/ContactsListActivity;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    goto :goto_0

    .line 2350
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fbfffa6 -> :sswitch_2
        -0x7effffd5 -> :sswitch_4
        -0x77ffffbf -> :sswitch_9
        -0x76ffffd8 -> :sswitch_2
        -0x6effffd4 -> :sswitch_4
        -0x667fffd6 -> :sswitch_2
        -0x667fffd3 -> :sswitch_2
        -0x5fffffb0 -> :sswitch_b
        -0x57ffffab -> :sswitch_a
        -0x56ffffb5 -> :sswitch_a
        -0x36ffffce -> :sswitch_5
        -0x32ffffba -> :sswitch_0
        -0x1fffffcd -> :sswitch_6
        -0x1fffffc9 -> :sswitch_7
        -0x1fffffc8 -> :sswitch_8
        0x8 -> :sswitch_2
        0x140003b -> :sswitch_c
        0x820001e -> :sswitch_1
        0x8a00004 -> :sswitch_2
        0x2800003c -> :sswitch_a
        0x28200014 -> :sswitch_1
        0x28a00023 -> :sswitch_3
        0x28a00039 -> :sswitch_c
        0x28c0003a -> :sswitch_c
    .end sparse-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 2312
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2314
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2315
    return-void
.end method

.method private queryContactSources(Landroid/net/Uri;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 2180
    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    .line 2181
    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    .line 2182
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2184
    invoke-static {p0}, Lcom/android/contacts/model/Sources;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/Sources;

    move-result-object v6

    .line 2185
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/ContactsListActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2188
    if-eqz v0, :cond_2

    .line 2190
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2191
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2192
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2193
    const/4 v4, 0x1

    invoke-virtual {v6, v1, v4}, Lcom/android/contacts/model/Sources;->getInflatedSource(Ljava/lang/String;I)Lcom/android/contacts/model/ContactsSource;

    move-result-object v1

    .line 2195
    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lcom/android/contacts/model/ContactsSource;->readOnly:Z

    if-eqz v1, :cond_0

    .line 2196
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2203
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2198
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    .line 2199
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mWritableRawContactIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2203
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2206
    :cond_2
    return-void
.end method

.method private queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 1
    .parameter "contactId"

    .prologue
    .line 2898
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/contacts/ContactsUtils;->queryPhoneNumbers(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private registerProviderStatusObserver()V
    .locals 4

    .prologue
    .line 1122
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1124
    return-void
.end method

.method private returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const-string v4, "android.intent.extra.shortcut.NAME"

    .line 2329
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2331
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2332
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/ShortcutRouterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2333
    const-string v2, "android.intent.action.VIEW_CONTACT_SHORTCUT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2334
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2335
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2336
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2337
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2338
    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 2346
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 2347
    return-void

    .line 2340
    :cond_0
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x36ffffce

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x5fffffb0

    if-ne v1, v2, :cond_2

    .line 2341
    :cond_1
    const-string v1, "data1"

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2343
    :cond_2
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2344
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/android/contacts/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private setAsStar(Landroid/net/Uri;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3792
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 3793
    const-string v1, "starred"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3794
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3795
    return-void
.end method

.method private setDefaultMode()V
    .locals 3

    .prologue
    .line 1430
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1431
    const-string v1, "only_phones"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    .line 1432
    return-void
.end method

.method private setDeleteButtonBarMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 3870
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-ne v0, v1, :cond_1

    .line 3871
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setMode(ILandroid/widget/EditableListView;)V

    .line 3877
    :cond_0
    :goto_0
    return-void

    .line 3872
    :cond_1
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28200014

    if-ne v0, v1, :cond_2

    .line 3873
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setMode(ILandroid/widget/EditableListView;)V

    goto :goto_0

    .line 3874
    :cond_2
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-ne v0, v1, :cond_0

    .line 3875
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setMode(ILandroid/widget/EditableListView;)V

    goto :goto_0
.end method

.method private setDeleteButtonBarText(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 3860
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-ne v0, v1, :cond_1

    .line 3861
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setRemoveButtonText(II)V

    .line 3867
    :cond_0
    :goto_0
    return-void

    .line 3862
    :cond_1
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28200014

    if-ne v0, v1, :cond_2

    .line 3863
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setRemoveButtonText(II)V

    goto :goto_0

    .line 3864
    :cond_2
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-ne v0, v1, :cond_0

    .line 3865
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setRemoveButtonText(II)V

    goto :goto_0
.end method

.method private setEmptyText()V
    .locals 7

    .prologue
    const v6, 0x60202fa

    const/4 v5, 0x0

    .line 1343
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x32ffffba

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1352
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 1355
    :cond_2
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1356
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1357
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1358
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1359
    const v1, 0x7f070049

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1360
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1362
    const v2, 0x7f07004f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1364
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x28a00039

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x28c0003a

    if-ne v3, v4, :cond_4

    .line 1365
    :cond_3
    const v3, 0x7f0b0153

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1366
    const v1, 0x7f0b0158

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1367
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1368
    :cond_4
    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x28a00023

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v4, 0x28200014

    if-ne v3, v4, :cond_6

    .line 1369
    :cond_5
    const v3, 0x7f0b0152

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    const v1, 0x7f0b0157

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1371
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1372
    :cond_6
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, 0x2800003c

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x56ffffb5

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x5fffffb0

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x77ffffbf

    if-eq v2, v3, :cond_7

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x57ffffab

    if-ne v2, v3, :cond_8

    .line 1375
    :cond_7
    const v2, 0x7f0b0043

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 1378
    :cond_8
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 1385
    const v1, 0x7f07004c

    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1387
    if-eqz v0, :cond_9

    .line 1388
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1389
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1392
    :cond_9
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1393
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1396
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1397
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1398
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private setHeaderIcon()V
    .locals 4

    .prologue
    const v3, 0x7f0700a6

    .line 995
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getEnablePhoto()Z

    move-result v1

    .line 1001
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    const v2, 0x7f070099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1002
    if-eqz v1, :cond_2

    .line 1003
    const v1, 0x6020247

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1004
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1006
    :cond_2
    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setShowGuidePopupWindow(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3880
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3881
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_guide_popup_window"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3882
    return-void
.end method

.method private setupAddToFavoriteView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1091
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1095
    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1096
    new-instance v1, Lcom/android/contacts/ContactsListActivity$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$5;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$6;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    return-void
.end method

.method private setupAddToGroupView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1070
    const v0, 0x7f070042

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1074
    const v1, 0x7f0b0111

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1075
    new-instance v1, Lcom/android/contacts/ContactsListActivity$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$3;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$4;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1088
    return-void
.end method

.method private setupFastScroller()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1050
    const v0, 0x7f070043

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/widget/AlphabetFastIndexer;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFastIndexer:Lcom/android/contacts/ui/widget/AlphabetFastIndexer;

    .line 1052
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFastIndexer:Lcom/android/contacts/ui/widget/AlphabetFastIndexer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    if-eqz v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mFastIndexer:Lcom/android/contacts/ui/widget/AlphabetFastIndexer;

    invoke-virtual {v1, p0}, Lcom/android/contacts/ui/widget/AlphabetFastIndexer;->decorateScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1054
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFastIndexer:Lcom/android/contacts/ui/widget/AlphabetFastIndexer;

    invoke-virtual {v0, v2}, Lcom/android/contacts/ui/widget/AlphabetFastIndexer;->setVerticalPosition(Z)V

    .line 1055
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFastIndexer:Lcom/android/contacts/ui/widget/AlphabetFastIndexer;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/widget/AlphabetFastIndexer;->attatch(Landroid/widget/AbsListView;)V

    .line 1056
    iput-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mDrawThumb:Z

    .line 1057
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v3}, Landroid/widget/EditableListView;->setVerticalScrollBarEnabled(Z)V

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFastIndexer:Lcom/android/contacts/ui/widget/AlphabetFastIndexer;

    if-eqz v0, :cond_0

    .line 1059
    iput-boolean v3, p0, Lcom/android/contacts/ContactsListActivity;->mDrawThumb:Z

    .line 1060
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v2}, Landroid/widget/EditableListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method private setupGroupView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1065
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    return-void
.end method

.method private setupHeader()V
    .locals 8

    .prologue
    const/high16 v7, 0x1000

    const/high16 v6, 0x80

    const v2, 0x7f07009e

    const/4 v5, 0x0

    .line 1012
    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1013
    if-nez v0, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1016
    :cond_1
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1041
    :goto_1
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v6

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_0

    .line 1043
    :cond_2
    const v0, 0x7f0700a1

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1044
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1018
    :sswitch_0
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1021
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0118

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/GroupDelta;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1024
    :sswitch_2
    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1027
    :sswitch_3
    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1028
    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1031
    :sswitch_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1036
    :sswitch_5
    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1037
    const v1, 0x7f0b0130

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 1016
    :sswitch_data_0
    .sparse-switch
        -0x7fbfffa6 -> :sswitch_4
        -0x667fffd6 -> :sswitch_5
        -0x667fffd3 -> :sswitch_5
        -0x32ffffba -> :sswitch_3
        0x140003b -> :sswitch_1
        0x28a00023 -> :sswitch_2
        0x28a00039 -> :sswitch_0
    .end sparse-switch
.end method

.method private setupListView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1135
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    .line 1137
    new-instance v0, Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    const/16 v2, 0x15e

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactsListActivity$NameHighlightingAnimation;-><init>(Landroid/widget/ListView;ILcom/android/contacts/ContactsListActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightingAnimation:Lcom/android/contacts/TextHighlightingAnimation;

    .line 1142
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v4}, Landroid/widget/EditableListView;->setDividerHeight(I)V

    .line 1143
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1145
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1148
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 1150
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1151
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1152
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1153
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1156
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, v4}, Landroid/widget/EditableListView;->setSaveEnabled(Z)V

    .line 1159
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28200014

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-ne v0, v1, :cond_1

    .line 1160
    :cond_0
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/ContactDeleteButtonBar;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    .line 1161
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setDeleteButtonBarMode(I)V

    .line 1164
    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->setDeleteButtonBarText(I)V

    .line 1166
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    new-instance v1, Lcom/android/contacts/ContactsListActivity$7;

    invoke-direct {v1, p0}, Lcom/android/contacts/ContactsListActivity$7;-><init>(Lcom/android/contacts/ContactsListActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->setOnButtonBarClickListener(Lmiui/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 1235
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mDeleteButtonBar:Lcom/android/contacts/ui/ContactDeleteButtonBar;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 1236
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 1237
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 1239
    :cond_1
    return-void
.end method

.method private setupSearchView()V
    .locals 2

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0, p0}, Lcom/android/contacts/SearchEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1247
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0, p0}, Lcom/android/contacts/SearchEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1249
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/SearchEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    return-void
.end method

.method private showSoftKeyboard()V
    .locals 3

    .prologue
    .line 2319
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2321
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2322
    return-void
.end method

.method private startAccountSettings()V
    .locals 5

    .prologue
    .line 1778
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/vnd.service.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1779
    const-string v1, "authorities"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.android.contacts"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1782
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1783
    return-void
.end method

.method private startAddContactActivity()V
    .locals 3

    .prologue
    .line 3814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3815
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 3816
    return-void
.end method

.method private startAddMemberActivity()V
    .locals 3

    .prologue
    .line 3825
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3826
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.ADD_TO_GROUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3827
    const-string v1, "com.android.contacts.extra.GROUP_ID"

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3828
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3829
    return-void
.end method

.method private startFavoritePickerActivity()V
    .locals 2

    .prologue
    .line 3819
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactsListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3820
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.PICK_FAVORITE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3821
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 3822
    return-void
.end method

.method private toggleMarkedItem(Lcom/android/contacts/ContactListItemView;J)V
    .locals 2
    .parameter "item"
    .parameter "id"

    .prologue
    .line 3804
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3805
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3806
    invoke-virtual {p1}, Lcom/android/contacts/ContactListItemView;->hideMark()V

    .line 3811
    :goto_0
    return-void

    .line 3808
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMarkedItems:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3809
    invoke-virtual {p1}, Lcom/android/contacts/ContactListItemView;->showMark()V

    goto :goto_0
.end method

.method private unregisterProviderStatusObserver()V
    .locals 2

    .prologue
    .line 1131
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1132
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 2102
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->onSearchTextChanged()V

    .line 2103
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2106
    return-void
.end method

.method callContact(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 2848
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/ContactsListActivity;->callOrSmsContact(Landroid/database/Cursor;Z)Z

    move-result v0

    return v0
.end method

.method callOrSmsContact(Landroid/database/Cursor;Z)Z
    .locals 5
    .parameter "cursor"
    .parameter "sendSms"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2860
    if-nez p1, :cond_0

    move v2, v3

    .line 2891
    :goto_0
    return v2

    .line 2864
    :cond_0
    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v2, :sswitch_data_0

    .line 2884
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    move v0, v4

    .line 2885
    .local v0, hasPhone:Z
    :goto_1
    if-nez v0, :cond_3

    .line 2887
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->signalError()V

    move v2, v3

    .line 2888
    goto :goto_0

    .line 2868
    .end local v0           #hasPhone:Z
    :sswitch_0
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2869
    .local v1, phone:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 2870
    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->initiateSms(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_2
    move v2, v4

    .line 2874
    goto :goto_0

    .line 2872
    :cond_1
    invoke-static {p0, v1}, Lcom/android/contacts/ContactsUtils;->initiateCall(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_2

    .end local v1           #phone:Ljava/lang/String;
    :sswitch_1
    move v2, v3

    .line 2879
    goto :goto_0

    :cond_2
    move v0, v3

    .line 2884
    goto :goto_1

    .line 2891
    .restart local v0       #hasPhone:Z
    :cond_3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {p0, v2, v3, p2}, Lcom/android/contacts/ContactsUtils;->callOrSendSms(Landroid/content/Context;JZ)Z

    move-result v2

    goto :goto_0

    .line 2864
    :sswitch_data_0
    .sparse-switch
        -0x5fffffb0 -> :sswitch_0
        -0x36ffffce -> :sswitch_0
        -0x1fffffcd -> :sswitch_0
        -0x1fffffc9 -> :sswitch_1
        -0x1fffffc8 -> :sswitch_1
    .end sparse-switch
.end method

.method callSelection()Z
    .locals 3

    .prologue
    .line 2839
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 2840
    .local v1, list:Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2841
    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2842
    .local v0, cursor:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->callContact(Landroid/database/Cursor;)Z

    move-result v2

    .line 2844
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected doContactDelete(Landroid/net/Uri;)V
    .locals 2
    .parameter

    .prologue
    .line 2166
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->queryContactSources(Landroid/net/Uri;)V

    .line 2167
    iput-object p1, p0, Lcom/android/contacts/ContactsListActivity;->mSelectedContactUri:Landroid/net/Uri;

    .line 2168
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    if-lez v0, :cond_0

    .line 2169
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->showDialog(I)V

    .line 2177
    :goto_0
    return-void

    .line 2170
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    if-nez v0, :cond_1

    .line 2171
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->showDialog(I)V

    goto :goto_0

    .line 2172
    :cond_1
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2173
    const v0, 0x7f07000f

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->showDialog(I)V

    goto :goto_0

    .line 2175
    :cond_2
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->showDialog(I)V

    goto :goto_0
.end method

.method doFilter(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2734
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2735
    if-nez v0, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->getProjectionForQuery(Z)[Ljava/lang/String;

    move-result-object v2

    .line 2736
    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2737
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2818
    :goto_1
    return-object v0

    :cond_0
    move v1, v6

    .line 2735
    goto :goto_0

    .line 2741
    :cond_1
    if-eqz v0, :cond_2

    .line 2742
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mAlwaysDoFilterEvenWhenFilterIsEmpty:Z

    if-nez v0, :cond_3

    .line 2743
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2746
    :cond_2
    iput-boolean v3, p0, Lcom/android/contacts/ContactsListActivity;->mAlwaysDoFilterEvenWhenFilterIsEmpty:Z

    .line 2749
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2750
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 2822
    :sswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filtering not allowed in mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2757
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2764
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getAddToGroupFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2770
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getPeopleFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "display_name"

    move-object v3, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2775
    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "starred=1"

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 2781
    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "times_contacted > 0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "times_contacted DESC, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 2789
    :sswitch_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2790
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_2
    move-object v3, v4

    move-object v5, v4

    .line 2795
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 2793
    :cond_4
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 2799
    :sswitch_7
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v1

    .line 2800
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2801
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2803
    :cond_5
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 2814
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getJoinSuggestionsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v4

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2816
    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setSuggestionsCursor(Landroid/database/Cursor;)V

    .line 2817
    iput-boolean v6, p0, Lcom/android/contacts/ContactsListActivity;->mJoinModeShowAllContacts:Z

    .line 2818
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id != "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_1

    .line 2750
    :sswitch_data_0
    .sparse-switch
        -0x7fbfffa6 -> :sswitch_1
        -0x7effffd5 -> :sswitch_3
        -0x76ffffd8 -> :sswitch_1
        -0x6effffd4 -> :sswitch_3
        -0x667fffd6 -> :sswitch_1
        -0x667fffd3 -> :sswitch_1
        -0x36ffffce -> :sswitch_7
        -0x32ffffba -> :sswitch_8
        -0x1fffffcd -> :sswitch_0
        0x8 -> :sswitch_1
        0x140003b -> :sswitch_2
        0x820001e -> :sswitch_5
        0x8a00004 -> :sswitch_1
        0x28200014 -> :sswitch_4
        0x28a00023 -> :sswitch_6
        0x28a00039 -> :sswitch_2
        0x28c0003a -> :sswitch_2
    .end sparse-switch
.end method

.method getProjectionForQuery(Z)[Ljava/lang/String;
    .locals 2
    .parameter "filterMode"

    .prologue
    .line 2479
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 2527
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v0

    .line 2490
    :sswitch_0
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_FILTER_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2497
    :sswitch_1
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_FILTER_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2501
    :sswitch_2
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_PEOPLE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2505
    :sswitch_3
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2508
    :sswitch_4
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_PHONES_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2511
    :sswitch_5
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->POSTALS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2514
    :sswitch_6
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->LEGACY_POSTALS_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2517
    :sswitch_7
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2518
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION_FROM_EMAIL:[Ljava/lang/String;

    goto :goto_0

    .line 2519
    :cond_3
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2520
    sget-object v0, Lcom/android/contacts/ContactsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 2479
    :sswitch_data_0
    .sparse-switch
        -0x7effffd5 -> :sswitch_2
        -0x77ffffbf -> :sswitch_7
        -0x76ffffd8 -> :sswitch_0
        -0x6effffd4 -> :sswitch_2
        -0x667fffd6 -> :sswitch_0
        -0x667fffd3 -> :sswitch_0
        -0x5fffffb0 -> :sswitch_3
        -0x57ffffab -> :sswitch_1
        -0x56ffffb5 -> :sswitch_1
        -0x36ffffce -> :sswitch_3
        -0x32ffffba -> :sswitch_0
        -0x1fffffcd -> :sswitch_4
        -0x1fffffc9 -> :sswitch_5
        -0x1fffffc8 -> :sswitch_6
        0x8 -> :sswitch_0
        0x820001e -> :sswitch_0
        0x8a00004 -> :sswitch_0
        0x2800003c -> :sswitch_1
        0x28200014 -> :sswitch_0
        0x28a00023 -> :sswitch_0
        0x28a00039 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getQuantityText(III)Ljava/lang/String;
    .locals 4
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 2903
    if-nez p1, :cond_0

    .line 2904
    invoke-virtual {p0, p2}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2907
    :goto_0
    return-object v1

    .line 2906
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2907
    .local v0, format:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 1934
    packed-switch p1, :pswitch_data_0

    .line 1987
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1936
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 1937
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 1943
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 1944
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1951
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 1952
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/ContactsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 1953
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_0

    .line 1957
    :pswitch_4
    if-ne p2, v0, :cond_0

    .line 1958
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1960
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 1968
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/model/GroupDelta;->setRingtoneToGroupMembers(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1969
    const v0, 0x7f0b0150

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1964
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1977
    :pswitch_5
    if-ne p2, v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1980
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/GroupDelta;

    .line 1981
    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/contacts/model/GroupDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1983
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->buildUserGroupUri(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1934
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1331
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 1333
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28c0003a

    if-ne v0, v1, :cond_0

    .line 1334
    const v0, 0x28a00039

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/TwelveKeyDialer;->IS_SLIDE_DOWN:Z

    .line 1338
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 1
    .parameter "checkable"

    .prologue
    .line 3856
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->count()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setDeleteButtonBarText(I)V

    .line 3857
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1266
    sparse-switch v0, :sswitch_data_0

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1269
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1270
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1271
    if-eqz v1, :cond_0

    .line 1272
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1273
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->callContact(Landroid/database/Cursor;)Z

    goto :goto_0

    .line 1278
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startAccountSettings()V

    goto :goto_0

    .line 1282
    :sswitch_2
    const v0, 0x7f0b007a

    invoke-static {v0, p0}, Lcom/android/contacts/ContactsPreferenceActivity;->handleImportRequest(ILandroid/content/Context;)V

    goto :goto_0

    .line 1286
    :sswitch_3
    const v0, 0x7f0b007b

    invoke-static {v0, p0}, Lcom/android/contacts/ContactsPreferenceActivity;->handleImportRequest(ILandroid/content/Context;)V

    goto :goto_0

    .line 1291
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->createNew()V

    goto :goto_0

    .line 1266
    nop

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_0
        0x7f07004a -> :sswitch_1
        0x7f07004c -> :sswitch_2
        0x7f07004d -> :sswitch_3
        0x7f07004e -> :sswitch_4
        0x7f0700a1 -> :sswitch_4
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2048
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2054
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 2056
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2079
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2049
    :catch_0
    move-exception v0

    .line 2050
    const-string v1, "ContactsListActivity"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 2051
    goto :goto_0

    .line 2059
    :pswitch_1
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->setAsStar(Landroid/net/Uri;I)V

    move v0, v3

    .line 2060
    goto :goto_0

    :cond_0
    move v1, v4

    .line 2059
    goto :goto_1

    .line 2064
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->callContact(Landroid/database/Cursor;)Z

    move v0, v3

    .line 2065
    goto :goto_0

    .line 2069
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->smsContact(Landroid/database/Cursor;)Z

    move v0, v3

    .line 2070
    goto :goto_0

    .line 2074
    :pswitch_4
    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->doContactDelete(Landroid/net/Uri;)V

    move v0, v3

    .line 2075
    goto :goto_0

    .line 2056
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const v10, 0x8a00004

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v6, "phone"

    .line 612
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 614
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mIconSize:I

    .line 615
    new-instance v0, Lcom/android/contacts/ui/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactsPrefs:Lcom/android/contacts/ui/ContactsPreferences;

    .line 617
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/DialtactsActivity;

    if-eqz v0, :cond_a

    .line 618
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/DialtactsActivity;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    .line 619
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/DialtactsActivity;->getPhotoLoader()Lcom/android/contacts/ContactPhotoLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    .line 620
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    invoke-virtual {v0}, Lcom/android/contacts/DialtactsActivity;->getFooterView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mFooterView:Landroid/view/View;

    .line 626
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 629
    const-string v0, "com.android.contacts.extra.TITLE_EXTRA"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 630
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 634
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 635
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 640
    const-string v3, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 641
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    .line 642
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 643
    if-eqz v3, :cond_b

    .line 644
    const-string v4, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    .line 645
    const-string v4, "originalAction"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 647
    if-eqz v4, :cond_1

    move-object v0, v4

    .line 650
    :cond_1
    const-string v4, "originalComponent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 652
    if-eqz v3, :cond_2

    move-object v2, v3

    :cond_2
    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    .line 660
    :goto_1
    const-string v3, "ContactsListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called with action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iput v8, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 662
    const-string v3, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 663
    :cond_3
    iput v10, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 877
    :cond_4
    :goto_2
    const-string v0, "com.android.contacts.action.JOIN_AGGREGATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 878
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_3c

    .line 879
    const v0, -0x76ffffd8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 892
    :cond_5
    :goto_3
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    if-nez v0, :cond_6

    .line 893
    iput v10, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 896
    :cond_6
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    if-eqz v0, :cond_3d

    move v1, v7

    .line 898
    :goto_4
    if-eqz v1, :cond_3e

    .line 899
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    .line 919
    :cond_7
    :goto_5
    if-eqz v1, :cond_43

    .line 920
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupGroupView()V

    .line 946
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactsPrefs:Lcom/android/contacts/ui/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/ui/ContactsPreferences;->getSortOrder()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mSortOrder:I

    .line 947
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactsPrefs:Lcom/android/contacts/ui/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/ui/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I

    .line 948
    new-instance v0, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;-><init>(Lcom/android/contacts/ContactsListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    .line 949
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    if-eqz v0, :cond_9

    .line 950
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupSearchView()V

    .line 953
    :cond_9
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupHeader()V

    .line 954
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupListView()V

    .line 955
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupFastScroller()V

    .line 956
    new-instance v0, Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/ContactsListActivity$QueryHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    .line 957
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    .line 958
    :goto_7
    return-void

    .line 622
    :cond_a
    new-instance v0, Lcom/android/contacts/ContactPhotoLoader;

    const v1, 0x6020246

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoLoader;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    goto/16 :goto_0

    .line 656
    :cond_b
    iput-object v9, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    :cond_c
    move-object v11, v2

    move-object v2, v0

    move-object v0, v11

    goto/16 :goto_1

    .line 666
    :cond_d
    const-string v3, "com.android.contacts.action.ADD_TO_GROUP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 667
    const v0, 0x140003b

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 668
    const-string v0, "com.android.contacts.extra.GROUP_ID"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    .line 672
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 673
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    invoke-static {p0, v3, v4, v0}, Lcom/android/contacts/model/GroupDelta;->fromId(Landroid/content/Context;JZ)Lcom/android/contacts/model/GroupDelta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    .line 674
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 675
    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    int-to-long v5, v0

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    invoke-static {p0, v5, v6, v0}, Lcom/android/contacts/model/GroupDelta;->fromId(Landroid/content/Context;JZ)Lcom/android/contacts/model/GroupDelta;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 679
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    if-nez v0, :cond_f

    .line 680
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_7

    .line 683
    :cond_f
    sget-object v0, Lmiui/provider/ExtraContacts$Contacts;->CONTENT_ACCOUNT_NOT_GROUP_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/contacts/ContactsListActivity;->buildMergedGroupIds(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    goto/16 :goto_2

    .line 686
    :cond_10
    const-string v3, "com.android.contacts.action.LIST_GROUP"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 687
    const v0, 0x28a00039

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 688
    const-string v0, "com.android.contacts.extra.GROUP_ID"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    .line 689
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 690
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    invoke-static {p0, v3, v4, v0}, Lcom/android/contacts/model/GroupDelta;->fromId(Landroid/content/Context;JZ)Lcom/android/contacts/model/GroupDelta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    .line 691
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 692
    iget-object v4, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    int-to-long v5, v0

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    invoke-static {p0, v5, v6, v0}, Lcom/android/contacts/model/GroupDelta;->fromId(Landroid/content/Context;JZ)Lcom/android/contacts/model/GroupDelta;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 695
    :cond_11
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    if-eqz v0, :cond_12

    .line 696
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->buildUserGroupUri(Ljava/util/ArrayList;)V

    .line 705
    :cond_12
    :goto_a
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 706
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_7

    .line 699
    :cond_13
    const-string v0, "com.android.contacts.extra.GROUP"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 701
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->buildUserGroupUri(Ljava/lang/String;)V

    goto :goto_a

    .line 709
    :cond_14
    const-string v3, "com.android.contacts.action.LIST_ALL_CONTACTS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 710
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 711
    iput-boolean v8, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    goto/16 :goto_2

    .line 712
    :cond_15
    const-string v3, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 713
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_16

    move v0, v10

    :goto_b
    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    :cond_16
    const v0, 0x28200014

    goto :goto_b

    .line 714
    :cond_17
    const-string v3, "com.android.contacts.action.LIST_FREQUENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 715
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_18

    move v0, v10

    :goto_c
    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    :cond_18
    const v0, 0x820001e

    goto :goto_c

    .line 716
    :cond_19
    const-string v3, "com.android.contacts.action.LIST_STREQUENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 717
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_1a

    move v0, v10

    :goto_d
    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    :cond_1a
    const v0, 0x28a00023

    goto :goto_d

    .line 718
    :cond_1b
    const-string v3, "com.android.contacts.action.LIST_CONTACTS_WITH_PHONES"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 719
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 720
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    goto/16 :goto_2

    .line 721
    :cond_1c
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 724
    invoke-virtual {v1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 725
    const-string v3, "vnd.android.cursor.dir/contact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 726
    const v0, -0x76ffffd8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 727
    :cond_1d
    const-string v3, "vnd.android.cursor.dir/person"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 728
    const v0, -0x7effffd5

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 729
    :cond_1e
    const-string v3, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 730
    const v0, -0x36ffffce

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 731
    :cond_1f
    const-string v3, "vnd.android.cursor.dir/phone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 732
    const v0, -0x1fffffcd

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 733
    :cond_20
    const-string v3, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 734
    const v0, -0x1fffffc9

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 735
    :cond_21
    const-string v3, "vnd.android.cursor.dir/postal-address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 736
    const v0, -0x1fffffc8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 738
    :cond_22
    const-string v3, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 739
    const-string v3, "alias.DialShortcut"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 740
    const v0, -0x36ffffce

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 741
    const-string v0, "android.intent.action.CALL"

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 742
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setTitle(I)V

    goto/16 :goto_2

    .line 743
    :cond_23
    const-string v3, "alias.MessageShortcut"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 744
    const v0, -0x36ffffce

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 745
    const-string v0, "android.intent.action.SENDTO"

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 746
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setTitle(I)V

    goto/16 :goto_2

    .line 747
    :cond_24
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_25

    .line 748
    const v0, -0x76ffffd8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 749
    const-string v0, "android.intent.action.VIEW"

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 750
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setTitle(I)V

    goto/16 :goto_2

    .line 752
    :cond_25
    const v0, -0x667fffd6

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 753
    const-string v0, "android.intent.action.VIEW"

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 754
    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setTitle(I)V

    goto/16 :goto_2

    .line 756
    :cond_26
    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 757
    invoke-virtual {v1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 758
    const-string v3, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 759
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_27

    .line 760
    const v0, -0x76ffffd8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 762
    :cond_27
    const v0, -0x667fffd6

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 764
    :cond_28
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 765
    const v0, -0x36ffffce

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 766
    :cond_29
    const-string v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 767
    const v0, -0x1fffffcd

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 768
    :cond_2a
    const-string v3, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 769
    const v0, -0x1fffffc9

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 770
    :cond_2b
    const-string v3, "vnd.android.cursor.item/postal-address"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 771
    const v0, -0x1fffffc8

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 772
    :cond_2c
    const-string v3, "vnd.android.cursor.item/person"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 773
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_2d

    .line 774
    const v0, -0x7effffd5

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 776
    :cond_2d
    const v0, -0x6effffd4

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 780
    :cond_2e
    const-string v0, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 781
    const v0, -0x667fffd3

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 782
    :cond_2f
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 784
    const-string v0, "call"

    const-string v3, "action_msg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 785
    const-string v0, "query"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 787
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    invoke-static {v3, v0, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 789
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 791
    :cond_30
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_7

    .line 796
    :cond_31
    const-string v0, "email"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 797
    const v0, -0x77ffffbf

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 798
    iput v7, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 799
    const-string v0, "email"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    .line 809
    :goto_e
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    goto/16 :goto_2

    .line 800
    :cond_32
    const-string v0, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 801
    const v0, -0x77ffffbf

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 802
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 803
    const-string v0, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto :goto_e

    .line 806
    :cond_33
    const v0, 0x2800003c

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 807
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto :goto_e

    .line 810
    :cond_34
    const-string v0, "com.android.contacts.INTERNAL_SEARCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 812
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 813
    if-eqz v0, :cond_48

    .line 814
    const-string v3, "originalAction"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 816
    :goto_f
    const-string v3, "shortcutAction"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    .line 818
    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 819
    const v0, -0x57ffffab

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 820
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    .line 830
    :goto_10
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    goto/16 :goto_2

    .line 821
    :cond_35
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mShortcutAction:Ljava/lang/String;

    if-eqz v0, :cond_36

    const-string v0, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 822
    const v0, -0x5fffffb0

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 823
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 824
    const-string v0, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto :goto_10

    .line 826
    :cond_36
    const v0, -0x56ffffb5

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 827
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryMode:I

    .line 828
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    goto :goto_10

    .line 834
    :cond_37
    const-string v0, "android.provider.Contacts.SEARCH_SUGGESTION_CLICKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 835
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 837
    sget-object v2, Lcom/android/contacts/ContactsListActivity;->sContactsIdMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_47

    .line 838
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 839
    invoke-direct {p0, v2, v3}, Lcom/android/contacts/ContactsListActivity;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v2

    .line 840
    if-eqz v2, :cond_47

    .line 841
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ne v3, v7, :cond_46

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 842
    const-string v3, "data1"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 843
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 846
    :goto_11
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v3

    .line 851
    :goto_12
    const-string v3, "call"

    const-string v4, "action_msg"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    if-eqz v2, :cond_38

    .line 852
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 856
    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 857
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_7

    .line 854
    :cond_38
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v1

    goto :goto_13

    .line 859
    :cond_39
    const-string v0, "android.provider.Contacts.SEARCH_SUGGESTION_DIAL_NUMBER_CLICKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 860
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 861
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 862
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_7

    .line 864
    :cond_3a
    const-string v0, "android.provider.Contacts.SEARCH_SUGGESTION_CREATE_CONTACT_CLICKED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 866
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 867
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 868
    const-string v2, "phone"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 869
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 870
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_7

    .line 873
    :cond_3b
    const-string v0, "com.android.contacts.action.PICK_FAVORITE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 874
    const v0, -0x7fbfffa6

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    goto/16 :goto_2

    .line 881
    :cond_3c
    const v0, -0x32ffffba

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 882
    const-string v0, "com.android.contacts.action.AGGREGATE_ID"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J

    .line 883
    iget-wide v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryAggregateId:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_5

    .line 884
    const-string v0, "ContactsListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is missing required extra: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "com.android.contacts.action.AGGREGATE_ID"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p0, v8}, Lcom/android/contacts/ContactsListActivity;->setResult(I)V

    .line 887
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_3

    :cond_3d
    move v1, v8

    .line 896
    goto/16 :goto_4

    .line 900
    :cond_3e
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x32ffffba

    if-ne v0, v3, :cond_3f

    .line 901
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    .line 902
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mJoinModeShowAllContacts:Z

    goto/16 :goto_5

    .line 903
    :cond_3f
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_40

    .line 904
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    goto/16 :goto_5

    .line 905
    :cond_40
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    if-eqz v0, :cond_41

    .line 906
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    .line 907
    const v0, 0x7f070055

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 908
    const v3, 0x7f0b00fd

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/ContactsListActivity;->mInitialFilter:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</b>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/ContactsListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 911
    :cond_41
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->setContentView(I)V

    .line 912
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, 0x140003b

    if-ne v0, v3, :cond_42

    .line 913
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupAddToGroupView()V

    goto/16 :goto_5

    .line 914
    :cond_42
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v3, -0x7fbfffa6

    if-ne v0, v3, :cond_7

    .line 915
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setupAddToFavoriteView()V

    goto/16 :goto_5

    .line 921
    :cond_43
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_44

    .line 922
    const v0, 0x7f0700a4

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/SearchEditText;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    goto/16 :goto_6

    .line 923
    :cond_44
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    .line 924
    iput-boolean v7, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    .line 925
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002a

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 926
    const v0, 0x7f0700a4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/SearchEditText;

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    .line 928
    const v0, 0x7f070098

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    .line 929
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v9, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 931
    const-string v0, "com.android.contacts.action.LIST_DEFAULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 932
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/ContactsListActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 934
    const v0, 0x7f07009a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b0148

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 937
    const v0, 0x7f0700a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    .line 938
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 940
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setHeaderIcon()V

    goto/16 :goto_6

    .line 942
    :cond_45
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_46
    move-object v3, v9

    goto/16 :goto_11

    :cond_47
    move-object v2, v9

    goto/16 :goto_12

    :cond_48
    move-object v0, v9

    goto/16 :goto_f
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/high16 v1, -0x8000

    const/4 v6, 0x0

    .line 1993
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2042
    :cond_0
    :goto_0
    return-void

    .line 1999
    :cond_1
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2005
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2006
    if-eqz v0, :cond_0

    .line 2010
    iget-wide v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 2011
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2012
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/android/contacts/ContactsUtils;->queryForRawContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v1

    .line 2013
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2016
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getSummaryDisplayNameColumnIndex()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2019
    const/4 v2, 0x1

    const v4, 0x7f0b0017

    invoke-interface {p1, v6, v2, v6, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2022
    const/16 v2, 0xc

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 2024
    const/4 v2, 0x2

    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2027
    const v2, 0x7f0b001e

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v7, v6, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2031
    :cond_2
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2032
    if-nez v0, :cond_3

    .line 2033
    const v0, 0x7f0b0019

    invoke-interface {p1, v6, v8, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 2039
    :goto_1
    const/4 v0, 0x6

    const v2, 0x7f0b001b

    invoke-interface {p1, v6, v0, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2041
    const/4 v0, 0x7

    const v1, 0x7f0b001c

    invoke-interface {p1, v6, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 2000
    :catch_0
    move-exception v0

    .line 2001
    const-string v1, "ContactsListActivity"

    const-string v2, "bad menuInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2035
    :cond_3
    const v0, 0x7f0b001a

    invoke-interface {p1, v6, v8, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter
    .parameter

    .prologue
    const v1, 0x7f0b002d

    const/high16 v5, 0x104

    const v4, 0x1080027

    const v3, 0x104000a

    const/4 v2, 0x0

    .line 1879
    sparse-switch p1, :sswitch_data_0

    .line 1929
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1883
    :sswitch_0
    invoke-static {p0, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 1886
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0078

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1893
    :sswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;Lcom/android/contacts/ContactsListActivity$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1902
    :sswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;Lcom/android/contacts/ContactsListActivity$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1911
    :sswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;Lcom/android/contacts/ContactsListActivity$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1920
    :sswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/ContactsListActivity$DeleteClickListener;-><init>(Lcom/android/contacts/ContactsListActivity;Lcom/android/contacts/ContactsListActivity$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 1879
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070007 -> :sswitch_1
        0x7f07000d -> :sswitch_2
        0x7f07000e -> :sswitch_3
        0x7f07000f -> :sswitch_5
        0x7f070010 -> :sswitch_4
        0x7f0b007a -> :sswitch_0
        0x7f0b007b -> :sswitch_0
        0x7f0b011f -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    const/high16 v1, -0x8000

    .line 1657
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1661
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x140003b

    if-ne v0, v1, :cond_1

    .line 1662
    :cond_0
    const/4 v0, 0x0

    .line 1684
    :goto_0
    return v0

    .line 1665
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1668
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v1, :sswitch_data_0

    .line 1679
    const v1, 0x7f0f0006

    .line 1683
    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1684
    const/4 v0, 0x1

    goto :goto_0

    .line 1670
    :sswitch_0
    const v1, 0x7f0f0002

    .line 1671
    goto :goto_1

    .line 1675
    :sswitch_1
    const v1, 0x7f0f0003

    .line 1676
    goto :goto_1

    .line 1668
    :sswitch_data_0
    .sparse-switch
        0x28200014 -> :sswitch_0
        0x28a00039 -> :sswitch_1
        0x28c0003a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1436
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1437
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->stop()V

    .line 1438
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 2115
    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    .line 2116
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    .line 2117
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2118
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    .line 2120
    :cond_0
    const/4 v0, 0x1

    .line 2122
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEnterEditMode()V
    .locals 2

    .prologue
    .line 3833
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    .line 3834
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    if-eqz v0, :cond_0

    .line 3835
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/DialtactsActivity;->setActionFooterVisibility(Z)V

    .line 3838
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-ne v0, v1, :cond_1

    .line 3839
    const v0, 0x28c0003a

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 3841
    :cond_1
    return-void
.end method

.method public onExitEditMode()V
    .locals 2

    .prologue
    .line 3845
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    if-eqz v0, :cond_0

    .line 3846
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mTab:Lcom/android/contacts/DialtactsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/DialtactsActivity;->setActionFooterVisibility(Z)V

    .line 3849
    :cond_0
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28c0003a

    if-ne v0, v1, :cond_1

    .line 3850
    const v0, 0x28a00039

    iput v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    .line 3852
    :cond_1
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 2212
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 2213
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    .line 2215
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2087
    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mSearchInitiated:Z

    if-nez v1, :cond_0

    .line 2088
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 2089
    .local v0, unicodeChar:I
    if-eqz v0, :cond_0

    .line 2090
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mSearchInitiated:Z

    .line 2091
    new-instance v1, Ljava/lang/String;

    new-array v2, v4, [I

    aput v0, v2, v3

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([III)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/android/contacts/ContactsListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v1, v4

    .line 2095
    .end local v0           #unicodeChar:I
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2127
    sparse-switch p1, :sswitch_data_0

    .line 2143
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2129
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->callSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2130
    goto :goto_0

    .line 2136
    :sswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->deleteSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2137
    goto :goto_0

    .line 2127
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2241
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2242
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    .line 2243
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->onBackPressed()V

    .line 2244
    const/4 v0, 0x1

    .line 2246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, -0x32ffffba

    const/4 v4, 0x0

    const/high16 v3, -0x8000

    .line 2251
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    .line 2252
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    .line 2255
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupEditMode:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x140003b

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x7fbfffa6

    if-ne v0, v1, :cond_3

    :cond_1
    instance-of v0, p2, Lcom/android/contacts/ContactListItemView;

    if-eqz v0, :cond_3

    .line 2256
    check-cast p2, Lcom/android/contacts/ContactListItemView;

    invoke-direct {p0, p2, p4, p5}, Lcom/android/contacts/ContactsListActivity;->toggleMarkedItem(Lcom/android/contacts/ContactListItemView;J)V

    .line 2308
    :cond_2
    :goto_0
    return-void

    .line 2257
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    #calls: Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->isSearchAllContactsItemPosition(I)Z
    invoke-static {v0, p3}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->access$1000(Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2258
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->doSearch()V

    goto :goto_0

    .line 2259
    :cond_4
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x667fffd3

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x57ffffab

    if-ne v0, v1, :cond_9

    .line 2260
    :cond_5
    invoke-direct {p0, p3}, Lcom/android/contacts/ContactsListActivity;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 2263
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->queryContactSources(Landroid/net/Uri;)V

    .line 2264
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mReadOnlySourcesCnt:I

    if-lez v1, :cond_6

    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mWritableSourcesCnt:I

    if-nez v1, :cond_6

    .line 2265
    const v0, 0x7f0b00b0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2269
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2270
    const/high16 v0, 0x200

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2271
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2272
    if-eqz v0, :cond_7

    .line 2273
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2275
    :cond_7
    const-string v0, "picker_mode"

    iget v2, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_8

    move v2, v6

    :goto_1
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2277
    invoke-virtual {p0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2278
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_0

    :cond_8
    move v2, v5

    .line 2275
    goto :goto_1

    .line 2279
    :cond_9
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    if-ne v0, v2, :cond_a

    const-wide/16 v0, -0x2

    cmp-long v0, p4, v0

    if-nez v0, :cond_a

    .line 2280
    iput-boolean v5, p0, Lcom/android/contacts/ContactsListActivity;->mJoinModeShowAllContacts:Z

    .line 2281
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    goto :goto_0

    .line 2282
    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_12

    .line 2283
    invoke-direct {p0, p3}, Lcom/android/contacts/ContactsListActivity;->getSelectedUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 2284
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v3

    if-nez v0, :cond_b

    .line 2285
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2286
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2287
    :cond_b
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    if-ne v0, v2, :cond_c

    .line 2288
    invoke-direct {p0, v4, v4, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2289
    :cond_c
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x77ffffbf

    if-ne v0, v2, :cond_d

    .line 2291
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2292
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 2293
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto/16 :goto_0

    .line 2294
    :cond_d
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x36ffffce

    if-eq v0, v2, :cond_e

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x5fffffb0

    if-ne v0, v2, :cond_f

    .line 2295
    :cond_e
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2296
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2297
    :cond_f
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    .line 2298
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 2299
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getSummaryDisplayNameColumnIndex()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2300
    :cond_10
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x1fffffc9

    if-eq v0, v2, :cond_11

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x1fffffc8

    if-eq v0, v2, :cond_11

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, -0x1fffffcd

    if-ne v0, v2, :cond_2

    .line 2303
    :cond_11
    invoke-direct {p0, v4, v4, v1}, Lcom/android/contacts/ContactsListActivity;->returnPickerResult(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 2306
    :cond_12
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->signalError()V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1715
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v4

    .line 1774
    :goto_1
    return v0

    .line 1718
    :pswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f070104

    if-ne v0, v1, :cond_1

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    .line 1719
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    .line 1721
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1722
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1723
    const-string v1, "only_phones"

    iget-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1724
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v3

    .line 1726
    goto :goto_1

    :cond_1
    move v0, v3

    .line 1718
    goto :goto_2

    .line 1729
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startAddContactActivity()V

    goto :goto_0

    .line 1733
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startAccountSettings()V

    move v0, v3

    .line 1734
    goto :goto_1

    .line 1737
    :pswitch_4
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->enterEditMode()V

    move v0, v3

    .line 1738
    goto :goto_1

    .line 1741
    :pswitch_5
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    if-eqz v0, :cond_0

    .line 1742
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mMergedGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/GroupDelta;->sendSmsToGroup(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1747
    :pswitch_6
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mGroupDelta:Lcom/android/contacts/model/GroupDelta;

    if-eqz v0, :cond_0

    .line 1748
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/contacts/ViewContactActivity;->getRingtonePickerIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 1749
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ContactsListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1754
    :pswitch_7
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startAddMemberActivity()V

    goto :goto_0

    .line 1758
    :pswitch_8
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->startFavoritePickerActivity()V

    goto :goto_0

    .line 1762
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactsPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1766
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1767
    const-string v1, "vnd.android.cursor.item/sim-contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1768
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SimContacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1769
    const-string v1, "view_sim_contacts"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1770
    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1715
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700fa
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_3
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 1442
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 1443
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->unregisterProviderStatusObserver()V

    .line 1444
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mIsActive:Z

    .line 1446
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, 0x28a00023

    if-ne v1, v2, :cond_0

    .line 1447
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getFrequentSeparatorPos()I

    move-result v0

    .line 1448
    .local v0, separatorPos:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1449
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getCount()I

    .line 1452
    .end local v0           #separatorPos:I
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1690
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    .line 1701
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-ne v0, v1, :cond_1

    move v0, v3

    .line 1702
    :goto_0
    const v1, 0x7f070104

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1705
    const v1, 0x7f070103

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOnlyPhones:Z

    if-nez v0, :cond_3

    move v0, v3

    :goto_2
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1710
    :goto_3
    :sswitch_0
    return v3

    .line 1694
    :sswitch_1
    const v0, 0x7f0700fc

    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, 0x28a00039

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getRealCount()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v3

    :goto_4
    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_3

    :cond_0
    move v1, v4

    goto :goto_4

    :cond_1
    move v0, v4

    .line 1701
    goto :goto_0

    :cond_2
    move v2, v4

    .line 1702
    goto :goto_1

    :cond_3
    move v0, v4

    .line 1705
    goto :goto_2

    .line 1690
    nop

    :sswitch_data_0
    .sparse-switch
        0x28200014 -> :sswitch_0
        0x28a00039 -> :sswitch_1
        0x28c0003a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 1621
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 1623
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->checkProviderState(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1626
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 1639
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1641
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mListState:Landroid/os/Parcelable;

    .line 1642
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1456
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 1458
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    .line 1459
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    if-eqz v1, :cond_4

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 1466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsActive:Z

    .line 1468
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->registerProviderStatusObserver()V

    .line 1469
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mPhotoLoader:Lcom/android/contacts/ContactPhotoLoader;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoLoader;->resume()V

    .line 1473
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x8a00004

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28c0003a

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x140003b

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, -0x7fbfffa6

    if-ne v0, v1, :cond_2

    .line 1477
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setDefaultMode()V

    .line 1481
    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_3

    .line 1482
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0}, Lcom/android/contacts/SearchEditText;->requestFocus()Z

    .line 1485
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactsListActivity;->checkProviderState(Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1512
    :goto_1
    return-void

    .line 1460
    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    .line 1489
    :cond_5
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mIsContentChanged:Z

    if-eqz v0, :cond_7

    .line 1490
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1491
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->onSearchTextChanged()V

    .line 1497
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getEnablePhoto()Z

    move-result v0

    .line 1500
    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    if-eq v1, v0, :cond_8

    .line 1501
    const-string v1, "ContactsListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable photo change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->reloadFromMode()V

    .line 1504
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->notifyDataSetChanged()V

    .line 1505
    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mEnablePhotoBefore:Z

    .line 1507
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setHeaderIcon()V

    .line 1510
    :cond_8
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mJustCreated:Z

    .line 1511
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mSearchInitiated:Z

    goto :goto_1

    .line 1493
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->startQuery()V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1630
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1632
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    if-eqz v0, :cond_0

    .line 1633
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1635
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v7, 0x0

    .line 3897
    iget-object v5, p0, Lcom/android/contacts/ContactsListActivity;->mFastIndexer:Lcom/android/contacts/ui/widget/AlphabetFastIndexer;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/contacts/ContactsListActivity;->mDrawThumb:Z

    if-eqz v5, :cond_1

    .line 3898
    invoke-virtual {p1, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3899
    .local v4, v:Landroid/view/View;
    if-eqz v4, :cond_1

    instance-of v5, v4, Lcom/android/contacts/ContactListItemView;

    if-eqz v5, :cond_1

    .line 3900
    move-object v0, v4

    check-cast v0, Lcom/android/contacts/ContactListItemView;

    move-object v1, v0

    .line 3901
    .local v1, item:Lcom/android/contacts/ContactListItemView;
    invoke-virtual {v1}, Lcom/android/contacts/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v2

    .line 3902
    .local v2, name:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3903
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v7, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3904
    .local v3, thumb:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/contacts/ContactsListActivity;->mPreviousThumb:Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3905
    iget-object v5, p0, Lcom/android/contacts/ContactsListActivity;->mFastIndexer:Lcom/android/contacts/ui/widget/AlphabetFastIndexer;

    invoke-virtual {v5, v3}, Lcom/android/contacts/ui/widget/AlphabetFastIndexer;->drawThumb(Ljava/lang/CharSequence;)V

    .line 3907
    :cond_0
    iput-object v3, p0, Lcom/android/contacts/ContactsListActivity;->mPreviousThumb:Ljava/lang/String;

    .line 3914
    .end local v1           #item:Lcom/android/contacts/ContactListItemView;
    .end local v2           #name:Landroid/widget/TextView;
    .end local v3           #thumb:Ljava/lang/String;
    .end local v4           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 3909
    .restart local v1       #item:Lcom/android/contacts/ContactListItemView;
    .restart local v2       #name:Landroid/widget/TextView;
    .restart local v4       #v:Landroid/view/View;
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/ContactsListActivity;->mPreviousThumb:Ljava/lang/String;

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 3891
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mDrawThumb:Z

    .line 3892
    return-void

    .line 3891
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSearchTextChanged()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1813
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setEmptyText()V

    .line 1815
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 1817
    .local v0, filter:Landroid/widget/Filter;
    iget v1, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v2, 0x8a00004

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1818
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1819
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1820
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    if-eqz v1, :cond_0

    .line 1821
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1832
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1833
    return-void

    .line 1825
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mCreateNew:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1826
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/ContactsListActivity;->mIsMiliaoInstalled:Z

    if-eqz v1, :cond_0

    .line 1827
    iget-object v1, p0, Lcom/android/contacts/ContactsListActivity;->mMiliaoCard:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 1646
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 1648
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x2800003c

    if-ne v0, v1, :cond_0

    .line 1650
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SearchManager;

    .line 1651
    invoke-virtual {p0}, Landroid/app/SearchManager;->stopSearch()V

    .line 1653
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2109
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 2221
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 2222
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2234
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2224
    :sswitch_0
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    goto :goto_0

    .line 2227
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->finish()V

    goto :goto_0

    .line 2230
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2231
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->hideSoftKeyboard()V

    goto :goto_0

    .line 2222
    :sswitch_data_0
    .sparse-switch
        0x1020004 -> :sswitch_1
        0x102000a -> :sswitch_0
    .end sparse-switch
.end method

.method signalError()V
    .locals 0

    .prologue
    .line 2916
    return-void
.end method

.method smsContact(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 2852
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/ContactsListActivity;->callOrSmsContact(Landroid/database/Cursor;Z)Z

    move-result v0

    return v0
.end method

.method startQuery()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/16 v1, 0x2a

    const/4 v2, 0x0

    const-string v7, "display_name"

    .line 2609
    const-string v0, "ContactsListActivity"

    const-string v3, "start query"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->setEmptyText()V

    .line 2613
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchResultsMode:Z

    if-eqz v0, :cond_0

    .line 2614
    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2615
    const v3, 0x7f0b00fe

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2618
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    invoke-virtual {v0, v6}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->setLoading(Z)V

    .line 2621
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->cancelOperation(I)V

    .line 2622
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->setLoadingJoinSuggestions(Z)V

    .line 2626
    iput-boolean v4, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightWhenScrolling:Z

    .line 2627
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mSortOrder:I

    if-ne v0, v6, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 2629
    iput-boolean v6, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightWhenScrolling:Z

    .line 2635
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getProjectionForQuery(Z)[Ljava/lang/String;

    move-result-object v4

    .line 2636
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getTextFilter()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2637
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mContactItemListAdapter:Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/ContactsListActivity$ContactItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2723
    :goto_1
    return-void

    .line 2630
    :cond_2
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mSortOrder:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mDisplayOrder:I

    if-ne v0, v6, :cond_1

    .line 2632
    iput-boolean v6, p0, Lcom/android/contacts/ContactsListActivity;->mHighlightWhenScrolling:Z

    goto :goto_0

    .line 2641
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 2642
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getUriToQuery()Landroid/net/Uri;

    move-result-object v3

    .line 2643
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2644
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v5, "requesting_package"

    invoke-virtual {v3, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object v3, v0

    .line 2651
    :cond_4
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 2661
    :sswitch_0
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2667
    :sswitch_1
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    const-string v5, "display_name"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2677
    :sswitch_2
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2683
    :sswitch_3
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    const-string v5, "starred=1"

    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2689
    :sswitch_4
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    const-string v5, "times_contacted > 0"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "times_contacted DESC, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2697
    :sswitch_5
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2701
    :sswitch_6
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4}, Lcom/android/contacts/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2706
    :sswitch_7
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    const-string v5, "display_name"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2711
    :sswitch_8
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    const-string v5, "kind=2"

    const-string v6, "display_name"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2718
    :sswitch_9
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    invoke-virtual {v0, v6}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->setLoadingJoinSuggestions(Z)V

    .line 2719
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mQueryHandler:Lcom/android/contacts/ContactsListActivity$QueryHandler;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2651
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fbfffa6 -> :sswitch_0
        -0x7effffd5 -> :sswitch_1
        -0x77ffffbf -> :sswitch_2
        -0x76ffffd8 -> :sswitch_0
        -0x6effffd4 -> :sswitch_1
        -0x667fffd6 -> :sswitch_0
        -0x667fffd3 -> :sswitch_0
        -0x5fffffb0 -> :sswitch_2
        -0x57ffffab -> :sswitch_2
        -0x56ffffb5 -> :sswitch_2
        -0x36ffffce -> :sswitch_6
        -0x32ffffba -> :sswitch_9
        -0x1fffffcd -> :sswitch_7
        -0x1fffffc9 -> :sswitch_2
        -0x1fffffc8 -> :sswitch_8
        0x8 -> :sswitch_0
        0x140003b -> :sswitch_0
        0x820001e -> :sswitch_4
        0x8a00004 -> :sswitch_0
        0x2800003c -> :sswitch_2
        0x28200014 -> :sswitch_3
        0x28a00023 -> :sswitch_5
        0x28a00039 -> :sswitch_0
        0x28c0003a -> :sswitch_0
    .end sparse-switch
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1788
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mProviderStatus:I

    if-eqz v0, :cond_1

    .line 1805
    :cond_0
    :goto_0
    return-void

    .line 1792
    :cond_1
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mShowSearchBox:Z

    if-eqz v0, :cond_2

    .line 1793
    invoke-virtual {p0}, Lcom/android/contacts/ContactsListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1794
    iget-object v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchEditText:Lcom/android/contacts/SearchEditText;

    invoke-virtual {v0}, Lcom/android/contacts/SearchEditText;->requestFocus()Z

    .line 1795
    invoke-direct {p0}, Lcom/android/contacts/ContactsListActivity;->showSoftKeyboard()V

    goto :goto_0

    .line 1796
    :cond_2
    if-eqz p4, :cond_3

    .line 1797
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    .line 1798
    :cond_3
    iget-boolean v0, p0, Lcom/android/contacts/ContactsListActivity;->mSearchMode:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28a00039

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const v1, 0x28c0003a

    if-eq v0, v1, :cond_0

    .line 1799
    iget v0, p0, Lcom/android/contacts/ContactsListActivity;->mMode:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 1800
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/android/contacts/ContactsSearchManager;->startSearchForResult(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 1802
    :cond_4
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
