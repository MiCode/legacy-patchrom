.class public interface abstract Landroid/provider/Email$ContentUri;
.super Ljava/lang/Object;
.source "Email.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentUri"
.end annotation


# static fields
.field public static final ACCOUNT_STATUS:Landroid/net/Uri;

.field public static final BODYPARTS:Landroid/net/Uri;

.field public static final FOLDERS:Landroid/net/Uri;

.field public static final FOLDERS_NO_NOTIFY:Landroid/net/Uri;

.field public static final FOLDER_FLAGS:Landroid/net/Uri;

.field public static final FOLDER_LOCK:Landroid/net/Uri;

.field public static final INBOX_STATUS:Landroid/net/Uri;

.field public static final MESSAGES:Landroid/net/Uri;

.field public static final MESSAGES_NO_NOTIFY:Landroid/net/Uri;

.field public static final MESSAGE_FLAGS:Landroid/net/Uri;

.field public static final NEW_MESSAGES:Landroid/net/Uri;

.field public static final SYNC:Landroid/net/Uri;

.field public static final SYSTEM_FOLDERS_CREATE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/folders"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->FOLDERS:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/folders/no_notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->FOLDERS_NO_NOTIFY:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->MESSAGES:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/messages/no_notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->MESSAGES_NO_NOTIFY:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/bodyparts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->BODYPARTS:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/account_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->ACCOUNT_STATUS:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/inbox_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->INBOX_STATUS:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/sync"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->SYNC:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/messages/new"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->NEW_MESSAGES:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/messages/flags"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->MESSAGE_FLAGS:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/folders/flags"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->FOLDER_FLAGS:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/folders/lockFolder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->FOLDER_LOCK:Landroid/net/Uri;

    const-string v0, "content://com.motorola.blur.service.email.engine.EmailProvider/folders/system/create"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Email$ContentUri;->SYSTEM_FOLDERS_CREATE:Landroid/net/Uri;

    return-void
.end method
