.class public Landroid/pim/vcard/VCardEntryCommitter;
.super Ljava/lang/Object;
.source "VCardEntryCommitter.java"

# interfaces
.implements Landroid/pim/vcard/VCardEntryHandler;


# static fields
.field public static LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCreatedUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToCommit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "VCardEntryComitter"

    sput-object v0, Landroid/pim/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resolver"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/pim/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getCreatedUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/pim/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onEnd()V
    .locals 6

    .prologue
    invoke-static {}, Landroid/pim/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/pim/vcard/VCardEntryCommitter;->LOG_TAG:Ljava/lang/String;

    const-string v1, "time to commit entries: %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Landroid/pim/vcard/VCardEntryCommitter;->mTimeToCommit:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onEntryCreated(Landroid/pim/vcard/VCardEntry;)V
    .locals 6
    .parameter "vcardEntry"

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, start:J
    iget-object v2, p0, Landroid/pim/vcard/VCardEntryCommitter;->mCreatedUris:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1, v3}, Landroid/pim/vcard/VCardEntry;->pushIntoContentResolver(Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Landroid/pim/vcard/VCardEntryCommitter;->mTimeToCommit:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/pim/vcard/VCardEntryCommitter;->mTimeToCommit:J

    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    return-void
.end method
