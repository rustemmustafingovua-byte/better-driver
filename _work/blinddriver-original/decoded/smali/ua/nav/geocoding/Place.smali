.class public final Lua/nav/geocoding/Place;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/geocoding/Place$$serializer;,
        Lua/nav/geocoding/Place$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/geocoding/Place$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lua/nav/routing/GeoPoint;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/geocoding/Place$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/geocoding/Place;->Companion:Lua/nav/geocoding/Place$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne v2, v0, :cond_4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    iput-object p3, p0, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    iput-object p4, p0, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lua/nav/geocoding/Place;->d:Z

    goto :goto_0

    :cond_0
    iput-boolean p5, p0, Lua/nav/geocoding/Place;->d:Z

    :goto_0
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_1

    iput-object v1, p0, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p6, p0, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_2

    iput-object v1, p0, Lua/nav/geocoding/Place;->f:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p7, p0, Lua/nav/geocoding/Place;->f:Ljava/lang/String;

    :goto_2
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lua/nav/geocoding/Place;->g:Z

    return-void

    :cond_3
    iput-boolean p8, p0, Lua/nav/geocoding/Place;->g:Z

    return-void

    :cond_4
    sget-object p0, Lua/nav/geocoding/Place$$serializer;->INSTANCE:Lua/nav/geocoding/Place$$serializer;

    invoke-virtual {p0}, Lua/nav/geocoding/Place$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subtitle"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    iput-object p2, p0, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    iput-object p3, p0, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iput-boolean p4, p0, Lua/nav/geocoding/Place;->d:Z

    iput-object p5, p0, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    iput-object p6, p0, Lua/nav/geocoding/Place;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lua/nav/geocoding/Place;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;ZLjava/lang/String;ZI)V
    .locals 8

    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_0

    const/4 p4, 0x1

    :cond_0
    move v4, p4

    and-int/lit8 p4, p7, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    and-int/lit8 p4, p7, 0x40

    if-eqz p4, :cond_2

    const/4 p6, 0x0

    :cond_2
    move v7, p6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 4
    invoke-direct/range {v0 .. v7}, Lua/nav/geocoding/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Lua/nav/geocoding/Place;Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;I)Lua/nav/geocoding/Place;
    .locals 8

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    iget-object p2, p0, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p5, 0x4

    if-eqz p1, :cond_2

    iget-object p3, p0, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    :cond_2
    move-object v3, p3

    iget-boolean v4, p0, Lua/nav/geocoding/Place;->d:Z

    iget-object v5, p0, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    and-int/lit8 p1, p5, 0x20

    if-eqz p1, :cond_3

    iget-object p4, p0, Lua/nav/geocoding/Place;->f:Ljava/lang/String;

    :cond_3
    move-object v6, p4

    iget-boolean v7, p0, Lua/nav/geocoding/Place;->g:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "title"

    invoke-static {v1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subtitle"

    invoke-static {v2, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "point"

    invoke-static {v3, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lua/nav/geocoding/Place;

    invoke-direct/range {v0 .. v7}, Lua/nav/geocoding/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;ZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/geocoding/Place;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/geocoding/Place;

    iget-object v1, p0, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lua/nav/geocoding/Place;->d:Z

    iget-boolean v3, p1, Lua/nav/geocoding/Place;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lua/nav/geocoding/Place;->f:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/geocoding/Place;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lua/nav/geocoding/Place;->g:Z

    iget-boolean p1, p1, Lua/nav/geocoding/Place;->g:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    invoke-virtual {v2}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lua/nav/geocoding/Place;->d:Z

    invoke-static {v2, v1, v0}, Lm/a;->g(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/geocoding/Place;->f:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lua/nav/geocoding/Place;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", subtitle="

    const-string v1, ", point="

    const-string v2, "Place(title="

    iget-object v3, p0, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", precise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lua/nav/geocoding/Place;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", note="

    const-string v2, ", street="

    iget-object v3, p0, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/geocoding/Place;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, p0, Lua/nav/geocoding/Place;->g:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
