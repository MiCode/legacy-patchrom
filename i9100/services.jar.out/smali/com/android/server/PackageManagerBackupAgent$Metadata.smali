.class public Lcom/android/server/PackageManagerBackupAgent$Metadata;
.super Ljava/lang/Object;
.source "PackageManagerBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Metadata"
.end annotation


# instance fields
.field public signatures:[Landroid/content/pm/Signature;

.field final synthetic this$0:Lcom/android/server/PackageManagerBackupAgent;

.field public versionCode:I


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerBackupAgent;I[Landroid/content/pm/Signature;)V
    .locals 0
    .parameter
    .parameter "version"
    .parameter "sigs"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->this$0:Lcom/android/server/PackageManagerBackupAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p2, p0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    .line 79
    iput-object p3, p0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->signatures:[Landroid/content/pm/Signature;

    .line 80
    return-void
.end method
