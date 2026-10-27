.class public final Lua/nav/routing/OsrmRoute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/routing/OsrmRoute$$serializer;,
        Lua/nav/routing/OsrmRoute$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/routing/OsrmRoute$Companion;

.field public static final f:[Lt8/g;


# instance fields
.field public final a:D

.field public final b:D

.field public final c:Ljava/lang/Double;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/OsrmRoute$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/OsrmRoute;->Companion:Lua/nav/routing/OsrmRoute$Companion;

    sget-object v0, Lt8/h;->l:Lt8/h;

    new-instance v1, Lia/n;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lia/n;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    const/4 v1, 0x5

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

    aput-object v0, v1, v2

    sput-object v1, Lua/nav/routing/OsrmRoute;->f:[Lt8/g;

    return-void
.end method

.method public synthetic constructor <init>(IDDLjava/lang/Double;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    and-int/lit8 v0, p1, 0xb

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-ne v2, v0, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lua/nav/routing/OsrmRoute;->a:D

    iput-wide p4, p0, Lua/nav/routing/OsrmRoute;->b:D

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    iput-object v1, p0, Lua/nav/routing/OsrmRoute;->c:Ljava/lang/Double;

    goto :goto_0

    :cond_0
    iput-object p6, p0, Lua/nav/routing/OsrmRoute;->c:Ljava/lang/Double;

    :goto_0
    iput-object p7, p0, Lua/nav/routing/OsrmRoute;->d:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_1

    sget-object p1, Lu8/r;->l:Lu8/r;

    iput-object p1, p0, Lua/nav/routing/OsrmRoute;->e:Ljava/util/List;

    return-void

    :cond_1
    iput-object p8, p0, Lua/nav/routing/OsrmRoute;->e:Ljava/util/List;

    return-void

    :cond_2
    sget-object p0, Lua/nav/routing/OsrmRoute$$serializer;->INSTANCE:Lua/nav/routing/OsrmRoute$$serializer;

    invoke-virtual {p0}, Lua/nav/routing/OsrmRoute$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/routing/OsrmRoute;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/routing/OsrmRoute;

    iget-wide v3, p0, Lua/nav/routing/OsrmRoute;->a:D

    iget-wide v5, p1, Lua/nav/routing/OsrmRoute;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lua/nav/routing/OsrmRoute;->b:D

    iget-wide v5, p1, Lua/nav/routing/OsrmRoute;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/routing/OsrmRoute;->c:Ljava/lang/Double;

    iget-object v3, p1, Lua/nav/routing/OsrmRoute;->c:Ljava/lang/Double;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lua/nav/routing/OsrmRoute;->d:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/OsrmRoute;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lua/nav/routing/OsrmRoute;->e:Ljava/util/List;

    iget-object p1, p1, Lua/nav/routing/OsrmRoute;->e:Ljava/util/List;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lua/nav/routing/OsrmRoute;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lua/nav/routing/OsrmRoute;->b:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-object v2, p0, Lua/nav/routing/OsrmRoute;->c:Ljava/lang/Double;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/routing/OsrmRoute;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lua/nav/routing/OsrmRoute;->e:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "OsrmRoute(distance="

    const-string v1, ", duration="

    iget-wide v2, p0, Lua/nav/routing/OsrmRoute;->a:D

    invoke-static {v2, v3, v0, v1}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lua/nav/routing/OsrmRoute;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", durationTypical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/OsrmRoute;->c:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", geometry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/OsrmRoute;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", legs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lua/nav/routing/OsrmRoute;->e:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
