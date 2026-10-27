.class public final Lua/nav/SavedPlan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/SavedPlan$$serializer;,
        Lua/nav/SavedPlan$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/SavedPlan$Companion;

.field public static final h:[Lt8/g;


# instance fields
.field public final a:Lua/nav/routing/GeoPoint;

.field public final b:Ljava/lang/String;

.field public final c:Lua/nav/routing/GeoPoint;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:I

.field public final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lua/nav/SavedPlan$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/SavedPlan;->Companion:Lua/nav/SavedPlan$Companion;

    sget-object v0, Lt8/h;->l:Lt8/h;

    new-instance v1, Lsc/i;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lsc/i;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v1

    new-instance v2, Lsc/i;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lsc/i;-><init>(I)V

    invoke-static {v0, v2}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [Lt8/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v1, 0x5

    aput-object v4, v2, v1

    const/4 v1, 0x6

    aput-object v0, v2, v1

    sput-object v2, Lua/nav/SavedPlan;->h:[Lt8/g;

    return-void
.end method

.method public synthetic constructor <init>(ILua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;ILjava/util/List;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3f

    const/16 v1, 0x3f

    if-ne v1, v0, :cond_1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/SavedPlan;->a:Lua/nav/routing/GeoPoint;

    iput-object p3, p0, Lua/nav/SavedPlan;->b:Ljava/lang/String;

    iput-object p4, p0, Lua/nav/SavedPlan;->c:Lua/nav/routing/GeoPoint;

    iput-object p5, p0, Lua/nav/SavedPlan;->d:Ljava/lang/String;

    iput-object p6, p0, Lua/nav/SavedPlan;->e:Ljava/util/List;

    iput p7, p0, Lua/nav/SavedPlan;->f:I

    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lu8/r;->l:Lu8/r;

    .line 3
    iput-object p1, p0, Lua/nav/SavedPlan;->g:Ljava/util/List;

    return-void

    :cond_0
    iput-object p8, p0, Lua/nav/SavedPlan;->g:Ljava/util/List;

    return-void

    :cond_1
    sget-object p0, Lua/nav/SavedPlan$$serializer;->INSTANCE:Lua/nav/SavedPlan$$serializer;

    invoke-virtual {p0}, Lua/nav/SavedPlan$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;ILjava/util/List;)V
    .locals 1

    const-string v0, "aLabel"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bLabel"

    invoke-static {p4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routes"

    invoke-static {p5, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "via"

    invoke-static {p7, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lua/nav/SavedPlan;->a:Lua/nav/routing/GeoPoint;

    iput-object p2, p0, Lua/nav/SavedPlan;->b:Ljava/lang/String;

    iput-object p3, p0, Lua/nav/SavedPlan;->c:Lua/nav/routing/GeoPoint;

    iput-object p4, p0, Lua/nav/SavedPlan;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lua/nav/SavedPlan;->e:Ljava/util/List;

    iput p6, p0, Lua/nav/SavedPlan;->f:I

    .line 7
    iput-object p7, p0, Lua/nav/SavedPlan;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/SavedPlan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/SavedPlan;

    iget-object v1, p0, Lua/nav/SavedPlan;->a:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lua/nav/SavedPlan;->a:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/SavedPlan;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/SavedPlan;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/SavedPlan;->c:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lua/nav/SavedPlan;->c:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lua/nav/SavedPlan;->d:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/SavedPlan;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lua/nav/SavedPlan;->e:Ljava/util/List;

    iget-object v3, p1, Lua/nav/SavedPlan;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lua/nav/SavedPlan;->f:I

    iget v3, p1, Lua/nav/SavedPlan;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lua/nav/SavedPlan;->g:Ljava/util/List;

    iget-object p1, p1, Lua/nav/SavedPlan;->g:Ljava/util/List;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lua/nav/SavedPlan;->a:Lua/nav/routing/GeoPoint;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lua/nav/SavedPlan;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, La6/q;->c(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lua/nav/SavedPlan;->c:Lua/nav/routing/GeoPoint;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object v0, p0, Lua/nav/SavedPlan;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lua/nav/SavedPlan;->e:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v0

    iget v1, p0, Lua/nav/SavedPlan;->f:I

    invoke-static {v1, v0, v2}, Lm/a;->e(III)I

    move-result v0

    iget-object p0, p0, Lua/nav/SavedPlan;->g:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SavedPlan(a="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/SavedPlan;->a:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/SavedPlan;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/SavedPlan;->c:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/SavedPlan;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", routes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/SavedPlan;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lua/nav/SavedPlan;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", via="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lua/nav/SavedPlan;->g:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
