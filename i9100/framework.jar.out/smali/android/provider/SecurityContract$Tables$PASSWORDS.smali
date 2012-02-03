.class public final Landroid/provider/SecurityContract$Tables$PASSWORDS;
.super Ljava/lang/Object;
.source "SecurityContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SecurityContract$Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PASSWORDS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SecurityContract$Tables$PASSWORDS$Columns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "passwords"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Landroid/provider/SecurityContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "password"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method
