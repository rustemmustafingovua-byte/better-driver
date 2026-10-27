.class public final Lad/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/n;


# instance fields
.field public final a:Lqd/u;

.field public b:D

.field public c:D

.field public d:D

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lad/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/o;->Companion:Lad/n;

    return-void
.end method

.method public constructor <init>(Lqd/u;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/o;->a:Lqd/u;

    iget-object p1, p1, Lqd/u;->a:Landroid/content/SharedPreferences;

    const-string v0, "mapbox_ratio"

    const v1, 0x3f99999a    # 1.2f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lad/o;->b:D

    const-string v0, "osrm_ratio"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lad/o;->c:D

    const-string v0, "offline_ratio"

    const v1, 0x3fa66666    # 1.3f

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lad/o;->d:D

    const-string v0, "mapbox_n"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lad/o;->e:I

    const-string v0, "osrm_n"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lad/o;->f:I

    const-string v0, "offline_n"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lad/o;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-wide v0, p0, Lad/o;->b:D

    double-to-float v0, v0

    iget-object v1, p0, Lad/o;->a:Lqd/u;

    const-string v2, "mapbox_ratio"

    invoke-virtual {v1, v2, v0}, Lqd/u;->b(Ljava/lang/String;F)V

    const-string v0, "mapbox_n"

    iget v2, p0, Lad/o;->e:I

    invoke-virtual {v1, v2, v0}, Lqd/u;->c(ILjava/lang/String;)V

    iget-wide v2, p0, Lad/o;->c:D

    double-to-float v0, v2

    const-string v2, "osrm_ratio"

    invoke-virtual {v1, v2, v0}, Lqd/u;->b(Ljava/lang/String;F)V

    const-string v0, "osrm_n"

    iget v2, p0, Lad/o;->f:I

    invoke-virtual {v1, v2, v0}, Lqd/u;->c(ILjava/lang/String;)V

    iget-wide v2, p0, Lad/o;->d:D

    double-to-float v0, v2

    const-string v2, "offline_ratio"

    invoke-virtual {v1, v2, v0}, Lqd/u;->b(Ljava/lang/String;F)V

    const-string v0, "offline_n"

    iget p0, p0, Lad/o;->g:I

    invoke-virtual {v1, p0, v0}, Lqd/u;->c(ILjava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)D
    .locals 2

    const-string v0, "provider"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x770f88f1

    if-eq v0, v1, :cond_4

    const v1, 0x252b1f

    if-eq v0, v1, :cond_2

    const v1, 0x44acae1f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u041e\u0444\u043b\u0430\u0439\u043d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide p0, p0, Lad/o;->d:D

    return-wide p0

    :cond_2
    const-string v0, "OSRM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-wide p0, p0, Lad/o;->c:D

    return-wide p0

    :cond_4
    const-string v0, "Mapbox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-wide p0, p0, Lad/o;->b:D

    return-wide p0

    :cond_5
    :goto_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    return-wide p0
.end method
