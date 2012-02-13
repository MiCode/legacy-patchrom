.class public Lcom/motorola/blur/providers/calendar/CalendarBootService;
.super Landroid/app/Service;
.source "CalendarBootService.java"


# static fields
.field private static final DBG_ACTION_TEST:Ljava/lang/String; = "com.motorola.blur.providers.calendar.TEST"

.field private static final LOCAL_ACCOUNT_NAME:Ljava/lang/String; = "local-name"

.field private static final LOCAL_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.blur.calendar.LOCAL_ACCOUNT"

.field private static final LOCAL_CALENDAR_COLOR:I = 0xaa

.field private static final LOCAL_CALENDAR_NAME:Ljava/lang/String; = "local-calendar"

.field private static final SCRATCH_CALENDAR_COLOR:I = 0xb0b0b0

.field private static final SCRATCH_CALENDAR_NAME:Ljava/lang/String; = "scratch-calendar"

.field private static final TAG:Ljava/lang/String; = "QQQ"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAuthenticator:Lcom/motorola/blur/providers/calendar/CalendarAccountAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createDefaultCalendars()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 134
    const-string v0, "local-calendar"

    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xaa

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->createCalendar(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 135
    const-string v0, "scratch-calendar"

    const v1, 0x7f080013

    invoke-virtual {p0, v1}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0xb0b0b0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->createCalendar(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 137
    return-void
.end method

.method static getPhoneTimezone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 114
    .local v0, phoneTimezone:Ljava/util/TimeZone;
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, timezoneJava:Ljava/lang/String;
    return-object v1
.end method


# virtual methods
.method createCalendar(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 9
    .parameter "name"
    .parameter "displayName"
    .parameter "hidden"
    .parameter "color"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 140
    const-string v4, "QQQ"

    const-string v6, "createCalendar()"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "_sync_time"

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v4, "_sync_account"

    const-string v6, "local-name"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v4, "_sync_account_type"

    const-string v6, "com.motorola.blur.calendar.LOCAL_ACCOUNT"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v4, "_sync_id"

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v4, "_sync_local_id"

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v4, "_sync_dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v4, "_sync_mark"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v4, "displayName"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v4, "hidden"

    if-eqz p3, :cond_0

    move v5, v7

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v4, "color"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v4, "access_level"

    const/16 v5, 0x2bc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v4, "selected"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v4, "sync_events"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v4, "sync_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v4, "ownerAccount"

    const-string v5, "local@myDevice.com"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->getPhoneTimezone()Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, phoneTimezoneId:Ljava/lang/String;
    const-string v4, "location"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v4, "timezone"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 168
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 170
    return-void

    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #phoneTimezoneId:Ljava/lang/String;
    :cond_0
    move v5, v8

    .line 153
    goto :goto_0
.end method

.method createLocalAccount()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "QQQ"

    .line 187
    const-string v0, "QQQ"

    const-string v0, "createLocalAccount()"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/motorola/blur/providers/calendar/CalendarBootService;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {p0}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->getLocalAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const-string v0, "QQQ"

    const-string v0, "   create account failed"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    return-void
.end method

.method createLocalAccountAndCalendarIfNecessary()V
    .locals 4

    .prologue
    const-string v3, "QQQ"

    .line 120
    const-string v1, "QQQ"

    const-string v1, "createLocalAccountAndCalendarIfNecessary()"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/motorola/blur/providers/calendar/CalendarBootService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.motorola.blur.calendar.LOCAL_ACCOUNT"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 124
    .local v0, kAccounts:[Landroid/accounts/Account;
    const-string v1, "QQQ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    kAccounts.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    array-length v1, v0

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->createLocalAccount()V

    .line 128
    invoke-direct {p0}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->createDefaultCalendars()V

    .line 131
    :cond_0
    return-void
.end method

.method deleteDefaultCalendars()V
    .locals 7

    .prologue
    const-string v6, "QQQ"

    .line 173
    const-string v4, "QQQ"

    const-string v4, "deleteDefaultCalendars()"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {p0}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "_sync_account_type = com.motorola.blur.calendar.LOCAL_ACCOUNT"

    .line 178
    .local v2, kWhere:Ljava/lang/String;
    const/4 v1, 0x0

    .line 180
    .local v1, kSelection:[Ljava/lang/String;
    sget-object v4, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_sync_account_type = com.motorola.blur.calendar.LOCAL_ACCOUNT"

    invoke-virtual {v0, v4, v5, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 182
    .local v3, n:I
    const-string v4, "QQQ"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    n = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method getLocalAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 197
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "local-name"

    const-string v2, "com.motorola.blur.calendar.LOCAL_ACCOUNT"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method onActionBootCompleted(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 90
    const-string v0, "QQQ"

    const-string v1, "onActionBootCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->createLocalAccountAndCalendarIfNecessary()V

    .line 93
    return-void
.end method

.method onActionDbgTest(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const-string v3, "QQQ"

    .line 96
    const-string v1, "QQQ"

    const-string v1, "onActionDbgTest()"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v1, "cmd"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, kDebugCommand:Ljava/lang/String;
    const-string v1, "QQQ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   cmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, "create"

    invoke-static {v0, v1}, Lcom/motorola/blur/util/StringUtils;->areEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->createDefaultCalendars()V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v1, "delete"

    invoke-static {v0, v1}, Lcom/motorola/blur/util/StringUtils;->areEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {p0}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->deleteDefaultCalendars()V

    goto :goto_0

    .line 106
    :cond_2
    const-string v1, "account"

    invoke-static {v0, v1}, Lcom/motorola/blur/util/StringUtils;->areEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->createLocalAccount()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, binder:Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, kAction:Ljava/lang/String;
    const-string v2, "android.accounts.AccountAuthenticator"

    invoke-static {v1, v2}, Lcom/motorola/blur/util/StringUtils;->areEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/motorola/blur/providers/calendar/CalendarBootService;->mAuthenticator:Lcom/motorola/blur/providers/calendar/CalendarAccountAuthenticator;

    invoke-virtual {v2}, Lcom/motorola/blur/providers/calendar/CalendarAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 67
    :cond_0
    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/providers/calendar/CalendarBootService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 53
    new-instance v0, Lcom/motorola/blur/providers/calendar/CalendarAccountAuthenticator;

    invoke-direct {v0, p0}, Lcom/motorola/blur/providers/calendar/CalendarAccountAuthenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/providers/calendar/CalendarBootService;->mAuthenticator:Lcom/motorola/blur/providers/calendar/CalendarAccountAuthenticator;

    .line 54
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    const-string v1, "QQQ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CalendarBootService.onStartCommand("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, kAction:Ljava/lang/String;
    const-string v1, "com.motorola.blur.providers.calendar.TEST"

    invoke-static {v0, v1}, Lcom/motorola/blur/util/StringUtils;->areEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p0, p1}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->onActionDbgTest(Landroid/content/Intent;)V

    .line 85
    .end local v0           #kAction:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 80
    .restart local v0       #kAction:Ljava/lang/String;
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v0, v1}, Lcom/motorola/blur/util/StringUtils;->areEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/motorola/blur/providers/calendar/CalendarBootService;->onActionBootCompleted(Landroid/content/Intent;)V

    goto :goto_0
.end method
