.class public final Lua/nav/routing/Step;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/routing/Step$$serializer;,
        Lua/nav/routing/Step$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/routing/Step$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;

.field public final d:Lua/nav/routing/GeoPoint;

.field public final e:Ljava/lang/String;

.field public final f:D

.field public final g:D

.field public final h:I

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/routing/Step$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/Step;->Companion:Lua/nav/routing/Step$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lua/nav/routing/GeoPoint;Ljava/lang/String;DDILjava/lang/String;)V
    .locals 3

    and-int/lit16 v0, p1, 0x1e9

    const/4 v1, 0x0

    const/16 v2, 0x1e9

    if-ne v2, v0, :cond_3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/routing/Step;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v1, p0, Lua/nav/routing/Step;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lua/nav/routing/Step;->b:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    iput-object v1, p0, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    :goto_1
    iput-object p5, p0, Lua/nav/routing/Step;->d:Lua/nav/routing/GeoPoint;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_2

    .line 2
    const-string p1, ""

    .line 3
    iput-object p1, p0, Lua/nav/routing/Step;->e:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p6, p0, Lua/nav/routing/Step;->e:Ljava/lang/String;

    :goto_2
    iput-wide p7, p0, Lua/nav/routing/Step;->f:D

    iput-wide p9, p0, Lua/nav/routing/Step;->g:D

    iput p11, p0, Lua/nav/routing/Step;->h:I

    iput-object p12, p0, Lua/nav/routing/Step;->i:Ljava/lang/String;

    return-void

    :cond_3
    sget-object p0, Lua/nav/routing/Step$$serializer;->INSTANCE:Lua/nav/routing/Step$$serializer;

    invoke-virtual {p0}, Lua/nav/routing/Step$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lua/nav/routing/GeoPoint;Ljava/lang/String;DDILjava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p5, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instruction"

    invoke-static {p11, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lua/nav/routing/Step;->a:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lua/nav/routing/Step;->b:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    .line 8
    iput-object p4, p0, Lua/nav/routing/Step;->d:Lua/nav/routing/GeoPoint;

    .line 9
    iput-object p5, p0, Lua/nav/routing/Step;->e:Ljava/lang/String;

    .line 10
    iput-wide p6, p0, Lua/nav/routing/Step;->f:D

    .line 11
    iput-wide p8, p0, Lua/nav/routing/Step;->g:D

    .line 12
    iput p10, p0, Lua/nav/routing/Step;->h:I

    .line 13
    iput-object p11, p0, Lua/nav/routing/Step;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Lua/nav/routing/Step;I)Lua/nav/routing/Step;
    .locals 12

    iget-object v1, p0, Lua/nav/routing/Step;->a:Ljava/lang/String;

    iget-object v2, p0, Lua/nav/routing/Step;->b:Ljava/lang/String;

    iget-object v3, p0, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    iget-object v4, p0, Lua/nav/routing/Step;->d:Lua/nav/routing/GeoPoint;

    iget-object v5, p0, Lua/nav/routing/Step;->e:Ljava/lang/String;

    iget-wide v6, p0, Lua/nav/routing/Step;->f:D

    iget-wide v8, p0, Lua/nav/routing/Step;->g:D

    iget-object v11, p0, Lua/nav/routing/Step;->i:Ljava/lang/String;

    const-string p0, "type"

    invoke-static {v1, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {v4, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {v5, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "instruction"

    invoke-static {v11, p0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lua/nav/routing/Step;

    move v10, p1

    invoke-direct/range {v0 .. v11}, Lua/nav/routing/Step;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lua/nav/routing/GeoPoint;Ljava/lang/String;DDILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lua/nav/routing/Step;->a:Ljava/lang/String;

    iget-object v1, p0, Lua/nav/routing/Step;->b:Ljava/lang/String;

    iget-object v2, p0, Lua/nav/routing/Step;->e:Ljava/lang/String;

    iget-object p0, p0, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p0}, Lid/i1;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lua/nav/routing/Step;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/routing/Step;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/routing/Step;

    iget-object v1, p0, Lua/nav/routing/Step;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/Step;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/routing/Step;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/Step;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lua/nav/routing/Step;->d:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lua/nav/routing/Step;->d:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lua/nav/routing/Step;->e:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/Step;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lua/nav/routing/Step;->f:D

    iget-wide v5, p1, Lua/nav/routing/Step;->f:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lua/nav/routing/Step;->g:D

    iget-wide v5, p1, Lua/nav/routing/Step;->g:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lua/nav/routing/Step;->h:I

    iget v3, p1, Lua/nav/routing/Step;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lua/nav/routing/Step;->i:Ljava/lang/String;

    iget-object p1, p1, Lua/nav/routing/Step;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/routing/Step;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lua/nav/routing/Step;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/routing/Step;->d:Lua/nav/routing/GeoPoint;

    invoke-virtual {v2}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lua/nav/routing/Step;->e:Ljava/lang/String;

    invoke-static {v2, v1, v0}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lua/nav/routing/Step;->f:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/routing/Step;->g:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget v2, p0, Lua/nav/routing/Step;->h:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-object p0, p0, Lua/nav/routing/Step;->i:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", modifier="

    const-string v1, ", exit="

    const-string v2, "Step(type="

    iget-object v3, p0, Lua/nav/routing/Step;->a:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/routing/Step;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lua/nav/routing/Step;->c:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/Step;->d:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/Step;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", distanceM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/routing/Step;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", durationS="

    const-string v2, ", geometryIndex="

    iget-wide v3, p0, Lua/nav/routing/Step;->g:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget v1, p0, Lua/nav/routing/Step;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", instruction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lua/nav/routing/Step;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
