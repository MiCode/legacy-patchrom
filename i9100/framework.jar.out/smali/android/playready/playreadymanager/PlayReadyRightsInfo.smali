.class public Landroid/playready/playreadymanager/PlayReadyRightsInfo;
.super Ljava/lang/Object;
.source "PlayReadyRightsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDrmFileTime;,
        Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyDateConstraints;,
        Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;
    }
.end annotation


# static fields
.field private static final LOG:Z

.field public static TAG:Ljava/lang/String;


# instance fields
.field public PlayReadyArrayRightsObj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;",
            ">;"
        }
    .end annotation
.end field

.field public rights:Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "PlayReadyRightsInfo"

    sput-object v0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->PlayReadyArrayRightsObj:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public PrintRights()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public addDRMRightsObject(Landroid/playready/playreadymanager/PlayReadyRightsInfo$PlayReadyRights;)V
    .locals 1
    .parameter "rightsObj"

    .prologue
    .line 68
    iget-object v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->PlayReadyArrayRightsObj:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/playready/playreadymanager/PlayReadyRightsInfo;->PlayReadyArrayRightsObj:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method
