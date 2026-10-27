.class public final Lua/nav/routing/SavedRoute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/routing/SavedRoute$$serializer;,
        Lua/nav/routing/SavedRoute$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/routing/SavedRoute$Companion;

.field public static final k:[Lt8/g;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Lua/nav/routing/Route;

.field public final d:Lua/nav/routing/GeoPoint;

.field public final e:Ljava/lang/String;

.field public final f:Lua/nav/routing/GeoPoint;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public final i:Ljava/lang/String;

.field public final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/SavedRoute$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/SavedRoute;->Companion:Lua/nav/routing/SavedRoute$Companion;

    sget-object v0, Lt8/h;->l:Lt8/h;

    new-instance v1, Lia/n;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lia/n;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Lt8/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    aput-object v0, v1, v2

    const/16 v0, 0x8

    aput-object v3, v1, v0

    const/16 v0, 0x9

    aput-object v3, v1, v0

    sput-object v1, Lua/nav/routing/SavedRoute;->k:[Lt8/g;

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/String;Lua/nav/routing/Route;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;J)V
    .locals 2

    and-int/lit8 v0, p1, 0x2f

    const/16 v1, 0x2f

    if-ne v1, v0, :cond_5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lua/nav/routing/SavedRoute;->a:J

    iput-object p4, p0, Lua/nav/routing/SavedRoute;->b:Ljava/lang/String;

    iput-object p5, p0, Lua/nav/routing/SavedRoute;->c:Lua/nav/routing/Route;

    iput-object p6, p0, Lua/nav/routing/SavedRoute;->d:Lua/nav/routing/GeoPoint;

    and-int/lit8 p2, p1, 0x10

    const-string p3, ""

    if-nez p2, :cond_0

    iput-object p3, p0, Lua/nav/routing/SavedRoute;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p7, p0, Lua/nav/routing/SavedRoute;->e:Ljava/lang/String;

    :goto_0
    iput-object p8, p0, Lua/nav/routing/SavedRoute;->f:Lua/nav/routing/GeoPoint;

    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_1

    iput-object p3, p0, Lua/nav/routing/SavedRoute;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p9, p0, Lua/nav/routing/SavedRoute;->g:Ljava/lang/String;

    :goto_1
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_2

    .line 2
    sget-object p2, Lu8/r;->l:Lu8/r;

    .line 3
    iput-object p2, p0, Lua/nav/routing/SavedRoute;->h:Ljava/util/List;

    goto :goto_2

    :cond_2
    iput-object p10, p0, Lua/nav/routing/SavedRoute;->h:Ljava/util/List;

    :goto_2
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_3

    .line 4
    const-string p2, "plan"

    .line 5
    iput-object p2, p0, Lua/nav/routing/SavedRoute;->i:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p11, p0, Lua/nav/routing/SavedRoute;->i:Ljava/lang/String;

    :goto_3
    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_4

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 7
    iput-wide p1, p0, Lua/nav/routing/SavedRoute;->j:J

    return-void

    :cond_4
    iput-wide p12, p0, Lua/nav/routing/SavedRoute;->j:J

    return-void

    :cond_5
    sget-object p0, Lua/nav/routing/SavedRoute$$serializer;->INSTANCE:Lua/nav/routing/SavedRoute$$serializer;

    invoke-virtual {p0}, Lua/nav/routing/SavedRoute$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(JLjava/lang/String;Lua/nav/routing/Route;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9
    const-string v2, "name"

    invoke-static {p3, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "route"

    invoke-static {p4, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "a"

    invoke-static {p5, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "aLabel"

    invoke-static {p6, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "b"

    invoke-static {p7, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "bLabel"

    invoke-static {p8, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "via"

    invoke-static {p9, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-wide p1, p0, Lua/nav/routing/SavedRoute;->a:J

    .line 12
    iput-object p3, p0, Lua/nav/routing/SavedRoute;->b:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lua/nav/routing/SavedRoute;->c:Lua/nav/routing/Route;

    .line 14
    iput-object p5, p0, Lua/nav/routing/SavedRoute;->d:Lua/nav/routing/GeoPoint;

    .line 15
    iput-object p6, p0, Lua/nav/routing/SavedRoute;->e:Ljava/lang/String;

    .line 16
    iput-object p7, p0, Lua/nav/routing/SavedRoute;->f:Lua/nav/routing/GeoPoint;

    .line 17
    iput-object p8, p0, Lua/nav/routing/SavedRoute;->g:Ljava/lang/String;

    .line 18
    iput-object p9, p0, Lua/nav/routing/SavedRoute;->h:Ljava/util/List;

    .line 19
    iput-object p10, p0, Lua/nav/routing/SavedRoute;->i:Ljava/lang/String;

    .line 20
    iput-wide v0, p0, Lua/nav/routing/SavedRoute;->j:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/routing/SavedRoute;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/routing/SavedRoute;

    iget-wide v3, p0, Lua/nav/routing/SavedRoute;->a:J

    iget-wide v5, p1, Lua/nav/routing/SavedRoute;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/routing/SavedRoute;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/SavedRoute;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/routing/SavedRoute;->c:Lua/nav/routing/Route;

    iget-object v3, p1, Lua/nav/routing/SavedRoute;->c:Lua/nav/routing/Route;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lua/nav/routing/SavedRoute;->d:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lua/nav/routing/SavedRoute;->d:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lua/nav/routing/SavedRoute;->e:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/SavedRoute;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lua/nav/routing/SavedRoute;->f:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lua/nav/routing/SavedRoute;->f:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lua/nav/routing/SavedRoute;->g:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/SavedRoute;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lua/nav/routing/SavedRoute;->h:Ljava/util/List;

    iget-object v3, p1, Lua/nav/routing/SavedRoute;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lua/nav/routing/SavedRoute;->i:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/SavedRoute;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lua/nav/routing/SavedRoute;->j:J

    iget-wide p0, p1, Lua/nav/routing/SavedRoute;->j:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lua/nav/routing/SavedRoute;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/routing/SavedRoute;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/routing/SavedRoute;->c:Lua/nav/routing/Route;

    invoke-virtual {v2}, Lua/nav/routing/Route;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lua/nav/routing/SavedRoute;->d:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/routing/SavedRoute;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/routing/SavedRoute;->f:Lua/nav/routing/GeoPoint;

    invoke-virtual {v2}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lua/nav/routing/SavedRoute;->g:Ljava/lang/String;

    invoke-static {v2, v1, v0}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/routing/SavedRoute;->h:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v0

    iget-object v2, p0, Lua/nav/routing/SavedRoute;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-wide v1, p0, Lua/nav/routing/SavedRoute;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedRoute(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lua/nav/routing/SavedRoute;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/SavedRoute;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/SavedRoute;->c:Lua/nav/routing/Route;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/SavedRoute;->d:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/SavedRoute;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/SavedRoute;->f:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/SavedRoute;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", via="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/SavedRoute;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/SavedRoute;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-wide v2, p0, Lua/nav/routing/SavedRoute;->j:J

    invoke-static {v2, v3, v1, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
