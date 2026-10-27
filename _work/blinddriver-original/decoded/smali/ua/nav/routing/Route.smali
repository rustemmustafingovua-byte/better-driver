.class public final Lua/nav/routing/Route;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/routing/Route$$serializer;,
        Lua/nav/routing/Route$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/routing/Route$Companion;

.field public static final l:[Lt8/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:D

.field public final c:D

.field public final d:Ljava/lang/Double;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;

.field public final i:Ljava/util/List;

.field public final j:Ljava/util/List;

.field public final k:Lt8/o;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lua/nav/routing/Route$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/Route;->Companion:Lua/nav/routing/Route$Companion;

    sget-object v0, Lt8/h;->l:Lt8/h;

    new-instance v1, Lia/n;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lia/n;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v1

    new-instance v2, Lia/n;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lia/n;-><init>(I)V

    invoke-static {v0, v2}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v2

    new-instance v3, Lia/n;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lia/n;-><init>(I)V

    invoke-static {v0, v3}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v3

    new-instance v4, Lia/n;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Lia/n;-><init>(I)V

    invoke-static {v0, v4}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v4

    new-instance v5, Lia/n;

    const/16 v6, 0x12

    invoke-direct {v5, v6}, Lia/n;-><init>(I)V

    invoke-static {v0, v5}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    const/16 v5, 0xa

    new-array v5, v5, [Lt8/g;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v1, v5, v6

    const/4 v1, 0x5

    aput-object v2, v5, v1

    const/4 v1, 0x6

    aput-object v7, v5, v1

    const/4 v1, 0x7

    aput-object v3, v5, v1

    const/16 v1, 0x8

    aput-object v4, v5, v1

    const/16 v1, 0x9

    aput-object v0, v5, v1

    sput-object v5, Lua/nav/routing/Route;->l:[Lt8/g;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;DDLjava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    and-int/lit8 v0, p1, 0x37

    const/4 v1, 0x0

    const/16 v2, 0x37

    if-ne v2, v0, :cond_5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/routing/Route;->a:Ljava/lang/String;

    iput-wide p3, p0, Lua/nav/routing/Route;->b:D

    iput-wide p5, p0, Lua/nav/routing/Route;->c:D

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_0

    iput-object v1, p0, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    goto :goto_0

    :cond_0
    iput-object p7, p0, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    :goto_0
    iput-object p8, p0, Lua/nav/routing/Route;->e:Ljava/util/List;

    iput-object p9, p0, Lua/nav/routing/Route;->f:Ljava/util/List;

    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_1

    .line 2
    const-string p2, ""

    .line 3
    iput-object p2, p0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p10, p0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    :goto_1
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_2

    iput-object v1, p0, Lua/nav/routing/Route;->h:Ljava/util/List;

    goto :goto_2

    :cond_2
    iput-object p11, p0, Lua/nav/routing/Route;->h:Ljava/util/List;

    :goto_2
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_3

    iput-object v1, p0, Lua/nav/routing/Route;->i:Ljava/util/List;

    goto :goto_3

    :cond_3
    iput-object p12, p0, Lua/nav/routing/Route;->i:Ljava/util/List;

    :goto_3
    and-int/lit16 p1, p1, 0x200

    if-nez p1, :cond_4

    .line 4
    sget-object p1, Lu8/r;->l:Lu8/r;

    .line 5
    :goto_4
    iput-object p1, p0, Lua/nav/routing/Route;->j:Ljava/util/List;

    goto :goto_5

    :cond_4
    move-object/from16 p1, p13

    goto :goto_4

    .line 6
    :goto_5
    new-instance p1, Lid/o0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lid/o0;-><init>(Lua/nav/routing/Route;I)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lua/nav/routing/Route;->k:Lt8/o;

    return-void

    :cond_5
    sget-object p0, Lua/nav/routing/Route$$serializer;->INSTANCE:Lua/nav/routing/Route$$serializer;

    invoke-virtual {p0}, Lua/nav/routing/Route$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;DDLjava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "summary"

    invoke-static {p9, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lua/nav/routing/Route;->a:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lua/nav/routing/Route;->b:D

    .line 11
    iput-wide p4, p0, Lua/nav/routing/Route;->c:D

    .line 12
    iput-object p6, p0, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    .line 13
    iput-object p7, p0, Lua/nav/routing/Route;->e:Ljava/util/List;

    .line 14
    iput-object p8, p0, Lua/nav/routing/Route;->f:Ljava/util/List;

    .line 15
    iput-object p9, p0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    .line 16
    iput-object p10, p0, Lua/nav/routing/Route;->h:Ljava/util/List;

    .line 17
    iput-object p11, p0, Lua/nav/routing/Route;->i:Ljava/util/List;

    .line 18
    iput-object p12, p0, Lua/nav/routing/Route;->j:Ljava/util/List;

    .line 19
    new-instance p1, Lid/o0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lid/o0;-><init>(Lua/nav/routing/Route;I)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lua/nav/routing/Route;->k:Lt8/o;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;DDLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;I)V
    .locals 14

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object/from16 v11, p9

    .line 20
    :goto_0
    sget-object v13, Lu8/r;->l:Lu8/r;

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 21
    invoke-direct/range {v1 .. v13}, Lua/nav/routing/Route;-><init>(Ljava/lang/String;DDLjava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static a(Lua/nav/routing/Route;Ljava/lang/String;DDLjava/util/List;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;I)Lua/nav/routing/Route;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lua/nav/routing/Route;->a:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lua/nav/routing/Route;->b:D

    move-wide v5, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p2

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lua/nav/routing/Route;->c:D

    move-wide v7, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p4

    :goto_2
    iget-object v9, v0, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_3

    iget-object v2, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    move-object v10, v2

    goto :goto_3

    :cond_3
    move-object/from16 v10, p6

    :goto_3
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_4

    iget-object v2, v0, Lua/nav/routing/Route;->f:Ljava/util/List;

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object/from16 v11, p7

    :goto_4
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_5

    iget-object v2, v0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    :goto_5
    move-object v12, v2

    goto :goto_6

    :cond_5
    const-string v2, ""

    goto :goto_5

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_6

    iget-object v2, v0, Lua/nav/routing/Route;->h:Ljava/util/List;

    move-object v13, v2

    goto :goto_7

    :cond_6
    move-object/from16 v13, p8

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_7

    iget-object v2, v0, Lua/nav/routing/Route;->i:Ljava/util/List;

    move-object v14, v2

    goto :goto_8

    :cond_7
    move-object/from16 v14, p9

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    iget-object v1, v0, Lua/nav/routing/Route;->j:Ljava/util/List;

    move-object v15, v1

    goto :goto_9

    :cond_8
    move-object/from16 v15, p10

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "provider"

    invoke-static {v4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "geometry"

    invoke-static {v10, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "steps"

    invoke-static {v11, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {v12, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signals"

    invoke-static {v15, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lua/nav/routing/Route;

    invoke-direct/range {v3 .. v15}, Lua/nav/routing/Route;-><init>(Ljava/lang/String;DDLjava/lang/Double;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v3
.end method


# virtual methods
.method public final b()[D
    .locals 0

    iget-object p0, p0, Lua/nav/routing/Route;->k:Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public final c()D
    .locals 2

    iget-object v0, p0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lua/nav/routing/Route;->b()[D

    move-result-object p0

    invoke-static {p0}, Lu8/l;->z0([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lua/nav/routing/Route;->h:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/routing/Route;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/routing/Route;

    iget-object v1, p0, Lua/nav/routing/Route;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/Route;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lua/nav/routing/Route;->b:D

    iget-wide v5, p1, Lua/nav/routing/Route;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lua/nav/routing/Route;->c:D

    iget-wide v5, p1, Lua/nav/routing/Route;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    iget-object v3, p1, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lua/nav/routing/Route;->e:Ljava/util/List;

    iget-object v3, p1, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lua/nav/routing/Route;->f:Ljava/util/List;

    iget-object v3, p1, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/Route;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lua/nav/routing/Route;->h:Ljava/util/List;

    iget-object v3, p1, Lua/nav/routing/Route;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lua/nav/routing/Route;->i:Ljava/util/List;

    iget-object v3, p1, Lua/nav/routing/Route;->i:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lua/nav/routing/Route;->j:Ljava/util/List;

    iget-object p1, p1, Lua/nav/routing/Route;->j:Ljava/util/List;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/routing/Route;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lua/nav/routing/Route;->b:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/routing/Route;->c:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v3, v0, v1}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-static {v3, v0, v1}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lua/nav/routing/Route;->h:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/routing/Route;->i:Ljava/util/List;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lua/nav/routing/Route;->j:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Route(provider="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/routing/Route;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", distanceM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/routing/Route;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", durationS="

    const-string v2, ", trafficDelayS="

    iget-wide v3, p0, Lua/nav/routing/Route;->c:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-object v1, p0, Lua/nav/routing/Route;->d:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxspeedKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/Route;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", congestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/Route;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lua/nav/routing/Route;->j:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
