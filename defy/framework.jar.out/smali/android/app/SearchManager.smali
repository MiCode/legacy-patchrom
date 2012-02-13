.class public Landroid/app/SearchManager;
.super Ljava/lang/Object;
.source "SearchManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchManager$OnCancelListener;,
        Landroid/app/SearchManager$OnDismissListener;
    }
.end annotation


# static fields
.field public static final ACTION_KEY:Ljava/lang/String; = "action_key"

.field public static final ACTION_MSG:Ljava/lang/String; = "action_msg"

.field public static final APP_DATA:Ljava/lang/String; = "app_data"

.field public static final CONTEXT_IS_VOICE:Ljava/lang/String; = "android.search.CONTEXT_IS_VOICE"

.field public static final CURSOR_EXTRA_KEY_IN_PROGRESS:Ljava/lang/String; = "in_progress"

.field private static final DBG:Z = false

.field public static final DISABLE_VOICE_SEARCH:Ljava/lang/String; = "android.search.DISABLE_VOICE_SEARCH"

.field public static final EXTRA_DATA_KEY:Ljava/lang/String; = "intent_extra_data_key"

.field public static final EXTRA_SELECT_QUERY:Ljava/lang/String; = "select_query"

.field public static final INTENT_ACTION_GLOBAL_SEARCH:Ljava/lang/String; = "android.search.action.GLOBAL_SEARCH"

.field public static final INTENT_ACTION_NONE:Ljava/lang/String; = "android.search.action.ZILCH"

.field public static final INTENT_ACTION_SEARCHABLES_CHANGED:Ljava/lang/String; = "android.search.action.SEARCHABLES_CHANGED"

.field public static final INTENT_ACTION_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.SEARCH_SETTINGS"

.field public static final INTENT_ACTION_SEARCH_SETTINGS_CHANGED:Ljava/lang/String; = "android.search.action.SETTINGS_CHANGED"

.field public static final INTENT_ACTION_WEB_SEARCH_SETTINGS:Ljava/lang/String; = "android.search.action.WEB_SEARCH_SETTINGS"

.field public static final MENU_KEY:C = 's'

.field public static final MENU_KEYCODE:I = 0x2f

.field public static final QUERY:Ljava/lang/String; = "query"

.field public static final SEARCH_MODE:Ljava/lang/String; = "search_mode"

.field public static final SHORTCUT_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.android.search.suggest"

.field public static final SUGGEST_COLUMN_BACKGROUND_COLOR:Ljava/lang/String; = "suggest_background_color"

.field public static final SUGGEST_COLUMN_FORMAT:Ljava/lang/String; = "suggest_format"

.field public static final SUGGEST_COLUMN_ICON_1:Ljava/lang/String; = "suggest_icon_1"

.field public static final SUGGEST_COLUMN_ICON_2:Ljava/lang/String; = "suggest_icon_2"

.field public static final SUGGEST_COLUMN_INTENT_ACTION:Ljava/lang/String; = "suggest_intent_action"

.field public static final SUGGEST_COLUMN_INTENT_COMPONENT_NAME:Ljava/lang/String; = "suggest_intent_component"

.field public static final SUGGEST_COLUMN_INTENT_DATA:Ljava/lang/String; = "suggest_intent_data"

.field public static final SUGGEST_COLUMN_INTENT_DATA_ID:Ljava/lang/String; = "suggest_intent_data_id"

.field public static final SUGGEST_COLUMN_INTENT_EXTRA_DATA:Ljava/lang/String; = "suggest_intent_extra_data"

.field public static final SUGGEST_COLUMN_QUERY:Ljava/lang/String; = "suggest_intent_query"

.field public static final SUGGEST_COLUMN_SHORTCUT_ID:Ljava/lang/String; = "suggest_shortcut_id"

.field public static final SUGGEST_COLUMN_SPINNER_WHILE_REFRESHING:Ljava/lang/String; = "suggest_spinner_while_refreshing"

.field public static final SUGGEST_COLUMN_TEXT_1:Ljava/lang/String; = "suggest_text_1"

.field public static final SUGGEST_COLUMN_TEXT_2:Ljava/lang/String; = "suggest_text_2"

.field public static final SUGGEST_COLUMN_TEXT_2_URL:Ljava/lang/String; = "suggest_text_2_url"

.field public static final SUGGEST_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.android.search.suggest"

.field public static final SUGGEST_NEVER_MAKE_SHORTCUT:Ljava/lang/String; = "_-1"

.field public static final SUGGEST_PARAMETER_LIMIT:Ljava/lang/String; = "limit"

.field public static final SUGGEST_URI_PATH_QUERY:Ljava/lang/String; = "search_suggest_query"

.field public static final SUGGEST_URI_PATH_SHORTCUT:Ljava/lang/String; = "search_suggest_shortcut"

.field private static final TAG:Ljava/lang/String; = "SearchManager"

.field public static final USER_QUERY:Ljava/lang/String; = "user_query"

.field private static mService:Landroid/app/ISearchManager;


# instance fields
.field private mAssociatedPackage:Ljava/lang/String;

.field mCancelListener:Landroid/app/SearchManager$OnCancelListener;

.field private final mContext:Landroid/content/Context;

.field mDismissListener:Landroid/app/SearchManager$OnDismissListener;

.field final mHandler:Landroid/os/Handler;

.field private mSearchDialog:Landroid/app/SearchDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    iput-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    iput-object p1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/SearchManager;->mHandler:Landroid/os/Handler;

    const-string v0, "search"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ISearchManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISearchManager;

    move-result-object v0

    sput-object v0, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    return-void
.end method

.method private ensureSearchDialog()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/SearchDialog;

    iget-object v1, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/app/SearchDialog;-><init>(Landroid/content/Context;Landroid/app/SearchManager;)V

    iput-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p0}, Landroid/app/SearchDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultSearchableForWebSearch()Landroid/app/SearchableInfo;
    .locals 4

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getDefaultSearchableForWebSearch()Landroid/app/SearchableInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultSearchableForWebSearch() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGlobalSearchActivity()Landroid/content/ComponentName;
    .locals 4

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGlobalSearchActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 4
    .parameter "componentName"

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1, p1}, Landroid/app/ISearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchableInfo() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchablesForWebSearch()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getSearchablesForWebSearch()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchablesForWebSearch() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSearchablesInGlobalSearch()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSearchablesInGlobalSearch() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "searchable"
    .parameter "query"

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 10
    .parameter "searchable"
    .parameter "query"
    .parameter "limit"

    .prologue
    const/4 v2, 0x0

    const-string v9, ""

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v6

    .local v6, authority:Ljava/lang/String;
    if-nez v6, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v7

    .local v7, contentPath:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v8, v7}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_2
    const-string v0, "search_suggest_query"

    invoke-virtual {v8, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v3

    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, selArgs:[Ljava/lang/String;
    if-eqz v3, :cond_4

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .end local v4           #selArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p2, v4, v0

    .restart local v4       #selArgs:[Ljava/lang/String;
    :goto_1
    if-lez p3, :cond_3

    const-string v0, "limit"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .end local v1           #uri:Landroid/net/Uri;
    :cond_4
    invoke-virtual {v8, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method public getWebSearchActivity()Landroid/content/ComponentName;
    .locals 4

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1}, Landroid/app/ISearchManager;->getWebSearchActivity()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWebSearchActivity() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    invoke-interface {v0}, Landroid/app/SearchManager$OnCancelListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    invoke-interface {v0}, Landroid/app/SearchManager$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setDefaultWebSearch(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "component"

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SearchManager;->mService:Landroid/app/ISearchManager;

    invoke-interface {v1, p1}, Landroid/app/ISearchManager;->setDefaultWebSearch(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SearchManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultWebSearch() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/app/SearchManager;->mCancelListener:Landroid/app/SearchManager$OnCancelListener;

    return-void
.end method

.method public setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/app/SearchManager;->mDismissListener:Landroid/app/SearchManager$OnDismissListener;

    return-void
.end method

.method startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 7
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"

    .prologue
    const-string v5, "source"

    const-string v6, "SearchManager"

    invoke-virtual {p0}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, globalSearchActivity:Landroid/content/ComponentName;
    if-nez v2, :cond_0

    const-string v4, "SearchManager"

    const-string v4, "No global search activity found."

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.search.action.GLOBAL_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-nez p3, :cond_4

    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .restart local p3
    :goto_1
    const-string v4, "source"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "source"

    iget-object v4, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v4, "app_data"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "query"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p2, :cond_3

    const-string v4, "select_query"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    :try_start_0
    iget-object v4, p0, Landroid/app/SearchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Global search activity not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local p3
    .local v0, appSearchData:Landroid/os/Bundle;
    move-object p3, v0

    .end local v0           #appSearchData:Landroid/os/Bundle;
    .restart local p3
    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V
    .locals 1
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "launchActivity"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    if-eqz p5, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Landroid/app/SearchManager;->startGlobalSearch(Ljava/lang/String;ZLandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/app/SearchManager;->ensureSearchDialog()V

    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/SearchDialog;->show(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public stopSearch()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public triggerSearch(Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 6
    .parameter "query"
    .parameter "launchActivity"
    .parameter "appSearchData"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/app/SearchManager;->mAssociatedPackage:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invoking app search on a different package not associated with this search manager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "SearchManager"

    const-string v1, "triggerSearch called with empty query, ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroid/app/SearchManager;->mSearchDialog:Landroid/app/SearchDialog;

    invoke-virtual {v0}, Landroid/app/SearchDialog;->launchQuerySearch()V

    goto :goto_0
.end method
