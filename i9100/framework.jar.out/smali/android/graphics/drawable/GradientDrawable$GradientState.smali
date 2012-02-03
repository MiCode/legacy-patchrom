.class final Landroid/graphics/drawable/GradientDrawable$GradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GradientState"
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field public mChangingConfigurations:I

.field public mColors:[I

.field public mGradient:I

.field private mGradientRadius:F

.field public mHasSolidColor:Z

.field public mHeight:I

.field public mInnerRadius:I

.field public mInnerRadiusRatio:F

.field public mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public mPadding:Landroid/graphics/Rect;

.field public mPositions:[F

.field public mRadius:F

.field public mRadiusArray:[F

.field public mShape:I

.field public mSolidColor:I

.field public mStrokeColor:I

.field public mStrokeDashGap:F

.field public mStrokeDashWidth:F

.field public mStrokeWidth:I

.field public mTempColors:[I

.field public mTempPositions:[F

.field public mThickness:I

.field public mThicknessRatio:F

.field private mUseLevel:Z

.field private mUseLevelForShape:Z

.field public mWidth:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x3f00

    .line 880
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 851
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 852
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 860
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 867
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 868
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 873
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 874
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 875
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 881
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 882
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x3f00

    .line 889
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 851
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 852
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 860
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 867
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 868
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 873
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 874
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 875
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 890
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    .line 891
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 892
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 893
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 894
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 897
    :cond_0
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    .line 900
    :cond_1
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 901
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 902
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 903
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 904
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 905
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 906
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 909
    :cond_2
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 910
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    .line 912
    :cond_3
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 913
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 914
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    .line 915
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    .line 916
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    .line 917
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    .line 918
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 919
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 920
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 921
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    .line 922
    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    .line 923
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .locals 3
    .parameter "orientation"
    .parameter "colors"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v0, 0x3f00

    .line 884
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 851
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 852
    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 860
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 867
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 868
    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 873
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 874
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 875
    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 885
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 886
    iput-object p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 887
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 849
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 849
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    return p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/GradientDrawable$GradientState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 849
    iget-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/GradientDrawable$GradientState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 849
    iput-boolean p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    return p1
.end method

.method static synthetic access$200(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 849
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return v0
.end method

.method static synthetic access$202(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 849
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    return p1
.end method

.method static synthetic access$300(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 849
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return v0
.end method

.method static synthetic access$302(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 849
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return p1
.end method

.method static synthetic access$400(Landroid/graphics/drawable/GradientDrawable$GradientState;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 849
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    return v0
.end method

.method static synthetic access$402(Landroid/graphics/drawable/GradientDrawable$GradientState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 849
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    return p1
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 937
    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 927
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "res"

    .prologue
    .line 932
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/graphics/drawable/GradientDrawable$1;)V

    return-object v0
.end method

.method public setCornerRadii([F)V
    .locals 1
    .parameter "radii"

    .prologue
    .line 980
    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 981
    if-nez p1, :cond_0

    .line 982
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 984
    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .parameter "radius"

    .prologue
    .line 972
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 973
    const/4 p1, 0x0

    .line 975
    :cond_0
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    .line 976
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    .line 977
    return-void
.end method

.method public setGradientCenter(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 949
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    .line 950
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    .line 951
    return-void
.end method

.method public setGradientRadius(F)V
    .locals 0
    .parameter "gradientRadius"

    .prologue
    .line 992
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    .line 993
    return-void
.end method

.method public setGradientType(I)V
    .locals 0
    .parameter "gradient"

    .prologue
    .line 945
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    .line 946
    return-void
.end method

.method public setShape(I)V
    .locals 0
    .parameter "shape"

    .prologue
    .line 941
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    .line 942
    return-void
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 987
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    .line 988
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    .line 989
    return-void
.end method

.method public setSolidColor(I)V
    .locals 1
    .parameter "argb"

    .prologue
    .line 954
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHasSolidColor:Z

    .line 955
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColor:I

    .line 956
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mColors:[I

    .line 957
    return-void
.end method

.method public setStroke(II)V
    .locals 0
    .parameter "width"
    .parameter "color"

    .prologue
    .line 960
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 961
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 962
    return-void
.end method

.method public setStroke(IIFF)V
    .locals 0
    .parameter "width"
    .parameter "color"
    .parameter "dashWidth"
    .parameter "dashGap"

    .prologue
    .line 965
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    .line 966
    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColor:I

    .line 967
    iput p3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    .line 968
    iput p4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    .line 969
    return-void
.end method
