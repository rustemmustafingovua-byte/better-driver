.class public final Lad/z1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/y1;


# instance fields
.field public final a:Lqd/u;

.field public b:D

.field public c:D

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/y1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/z1;->Companion:Lad/y1;

    return-void
.end method

.method public constructor <init>(Lqd/u;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/z1;->a:Lqd/u;

    iget-object p1, p1, Lqd/u;->a:Landroid/content/SharedPreferences;

    const-string v0, "city_ratio"

    const v1, 0x3f4ccccd    # 0.8f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lad/z1;->b:D

    const-string v0, "hwy_ratio"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lad/z1;->c:D

    const-string v0, "city_n"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lad/z1;->d:I

    const-string v0, "hwy_n"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lad/z1;->e:I

    return-void
.end method


# virtual methods
.method public final a(DI)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p3

    if-lez v1, :cond_2

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    cmpg-double v2, p1, v2

    if-gez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double v2, v2, p1

    int-to-double v4, v1

    div-double v6, v2, v4

    const-wide v8, 0x3fc999999999999aL    # 0.2

    const-wide/high16 v10, 0x4004000000000000L    # 2.5

    invoke-static/range {v6 .. v11}, Lg6/c1;->d(DDD)D

    move-result-wide v12

    const/16 v2, 0x46

    const/16 v3, 0x3c

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-ge v1, v2, :cond_1

    iget v1, v0, Lad/z1;->d:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    div-double v16, v4, v1

    iget-wide v14, v0, Lad/z1;->b:D

    move-wide/from16 v18, v14

    invoke-static/range {v12 .. v19}, Lm/a;->b(DDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lad/z1;->b:D

    iget v1, v0, Lad/z1;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lad/z1;->d:I

    goto :goto_0

    :cond_1
    iget v1, v0, Lad/z1;->e:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    div-double v16, v4, v1

    iget-wide v14, v0, Lad/z1;->c:D

    move-wide/from16 v18, v14

    invoke-static/range {v12 .. v19}, Lm/a;->b(DDDD)D

    move-result-wide v1

    iput-wide v1, v0, Lad/z1;->c:D

    iget v1, v0, Lad/z1;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lad/z1;->e:I

    :goto_0
    iget v1, v0, Lad/z1;->d:I

    iget v2, v0, Lad/z1;->e:I

    add-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x14

    if-nez v1, :cond_2

    iget-wide v1, v0, Lad/z1;->b:D

    double-to-float v1, v1

    iget-object v2, v0, Lad/z1;->a:Lqd/u;

    const-string v3, "city_ratio"

    invoke-virtual {v2, v3, v1}, Lqd/u;->b(Ljava/lang/String;F)V

    const-string v1, "city_n"

    iget v3, v0, Lad/z1;->d:I

    invoke-virtual {v2, v3, v1}, Lqd/u;->c(ILjava/lang/String;)V

    iget-wide v3, v0, Lad/z1;->c:D

    double-to-float v1, v3

    const-string v3, "hwy_ratio"

    invoke-virtual {v2, v3, v1}, Lqd/u;->b(Ljava/lang/String;F)V

    const-string v1, "hwy_n"

    iget v0, v0, Lad/z1;->e:I

    invoke-virtual {v2, v0, v1}, Lqd/u;->c(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
