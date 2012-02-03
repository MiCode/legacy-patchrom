.class public Landroid/content/pm/PackageParser$Component;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final className:Ljava/lang/String;

.field componentName:Landroid/content/ComponentName;

.field componentShortName:Ljava/lang/String;

.field public final intents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TII;>;"
        }
    .end annotation
.end field

.field public metaData:Landroid/os/Bundle;

.field public final owner:Landroid/content/pm/PackageParser$Package;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Component;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Component",
            "<TII;>;)V"
        }
    .end annotation

    .prologue
    .line 2918
    .local p0, this:Landroid/content/pm/PackageParser$Component;,"Landroid/content/pm/PackageParser$Component<TII;>;"
    .local p1, clone:Landroid/content/pm/PackageParser$Component;,"Landroid/content/pm/PackageParser$Component<TII;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2919
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 2920
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 2921
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 2922
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 2923
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    .line 2924
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .parameter "_owner"

    .prologue
    .local p0, this:Landroid/content/pm/PackageParser$Component;,"Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v0, 0x0

    .line 2850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2851
    iput-object p1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 2852
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 2853
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 2854
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ComponentInfo;)V
    .locals 7
    .parameter "args"
    .parameter "outInfo"

    .prologue
    .local p0, this:Landroid/content/pm/PackageParser$Component;,"Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v6, 0x0

    .line 2891
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V

    .line 2892
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    aget-object v0, v0, v6

    if-eqz v0, :cond_0

    .line 2916
    :goto_0
    return-void

    .line 2896
    :cond_0
    iget v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    if-eqz v0, :cond_1

    .line 2898
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 2899
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 2906
    .local v2, pname:Ljava/lang/CharSequence;
    :goto_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    iget-object v4, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    #calls: Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 2911
    .end local v2           #pname:Ljava/lang/CharSequence;
    :cond_1
    iget v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    if-eqz v0, :cond_2

    .line 2912
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 2915
    :cond_2
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p2, Landroid/content/pm/ComponentInfo;->enabled:Z

    goto :goto_0

    .line 2904
    :cond_3
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #pname:Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V
    .locals 7
    .parameter "args"
    .parameter "outInfo"

    .prologue
    .local p0, this:Landroid/content/pm/PackageParser$Component;,"Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2857
    iget-object v3, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    iput-object v3, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 2858
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 2859
    iget-object v3, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v4, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->nameRes:I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2860
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2861
    iput-object v5, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 2862
    iget-object v3, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not specify android:name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 2888
    :goto_0
    return-void

    .line 2866
    :cond_0
    iget-object v3, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    #calls: Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1, v4}, Landroid/content/pm/PackageParser;->access$000(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 2868
    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 2869
    iput-object v5, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 2870
    iget-object v3, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not have valid android:name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    goto :goto_0

    .line 2874
    :cond_1
    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 2876
    iget-object v3, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v4, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->iconRes:I

    invoke-virtual {v3, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2877
    .local v0, iconVal:I
    if-eqz v0, :cond_2

    .line 2878
    iput v0, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 2879
    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2882
    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v4, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 2883
    .local v2, v:Landroid/util/TypedValue;
    if-eqz v2, :cond_3

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    iput v3, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_3

    .line 2884
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2887
    :cond_3
    iget-object v3, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 2927
    .local p0, this:Landroid/content/pm/PackageParser$Component;,"Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 2928
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 2934
    :goto_0
    return-object v0

    .line 2930
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2931
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 2934
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getComponentShortName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2938
    .local p0, this:Landroid/content/pm/PackageParser$Component;,"Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2939
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    .line 2945
    :goto_0
    return-object v1

    .line 2941
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Component;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 2942
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 2943
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    .line 2945
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .local p0, this:Landroid/content/pm/PackageParser$Component;,"Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v0, 0x0

    .line 2949
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 2950
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    .line 2951
    return-void
.end method
