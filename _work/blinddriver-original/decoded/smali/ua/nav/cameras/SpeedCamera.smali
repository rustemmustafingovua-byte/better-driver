.class public final Lua/nav/cameras/SpeedCamera;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/cameras/SpeedCamera$$serializer;,
        Lua/nav/cameras/SpeedCamera$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/cameras/SpeedCamera$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:D

.field public final c:D

.field public final d:Ljava/lang/Integer;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/cameras/SpeedCamera$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/cameras/SpeedCamera;->Companion:Lua/nav/cameras/SpeedCamera$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;DDLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne v2, v0, :cond_6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/cameras/SpeedCamera;->a:Ljava/lang/String;

    iput-wide p3, p0, Lua/nav/cameras/SpeedCamera;->b:D

    iput-wide p5, p0, Lua/nav/cameras/SpeedCamera;->c:D

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_0

    iput-object v1, p0, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iput-object p7, p0, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    :goto_0
    and-int/lit8 p2, p1, 0x10

    const-string p3, ""

    if-nez p2, :cond_1

    iput-object p3, p0, Lua/nav/cameras/SpeedCamera;->e:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p8, p0, Lua/nav/cameras/SpeedCamera;->e:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_2

    iput-object v1, p0, Lua/nav/cameras/SpeedCamera;->f:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p9, p0, Lua/nav/cameras/SpeedCamera;->f:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_3

    iput-object v1, p0, Lua/nav/cameras/SpeedCamera;->g:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p10, p0, Lua/nav/cameras/SpeedCamera;->g:Ljava/lang/String;

    :goto_3
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_4

    iput-object p3, p0, Lua/nav/cameras/SpeedCamera;->h:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p11, p0, Lua/nav/cameras/SpeedCamera;->h:Ljava/lang/String;

    :goto_4
    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_5

    iput-object v1, p0, Lua/nav/cameras/SpeedCamera;->i:Ljava/lang/Integer;

    return-void

    :cond_5
    iput-object p12, p0, Lua/nav/cameras/SpeedCamera;->i:Ljava/lang/Integer;

    return-void

    :cond_6
    sget-object p0, Lua/nav/cameras/SpeedCamera$$serializer;->INSTANCE:Lua/nav/cameras/SpeedCamera$$serializer;

    invoke-virtual {p0}, Lua/nav/cameras/SpeedCamera$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    instance-of v1, p1, Lua/nav/cameras/SpeedCamera;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/cameras/SpeedCamera;

    iget-object v1, p0, Lua/nav/cameras/SpeedCamera;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/cameras/SpeedCamera;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lua/nav/cameras/SpeedCamera;->b:D

    iget-wide v5, p1, Lua/nav/cameras/SpeedCamera;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lua/nav/cameras/SpeedCamera;->c:D

    iget-wide v5, p1, Lua/nav/cameras/SpeedCamera;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lua/nav/cameras/SpeedCamera;->e:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/cameras/SpeedCamera;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lua/nav/cameras/SpeedCamera;->f:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/cameras/SpeedCamera;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lua/nav/cameras/SpeedCamera;->g:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/cameras/SpeedCamera;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lua/nav/cameras/SpeedCamera;->h:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/cameras/SpeedCamera;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lua/nav/cameras/SpeedCamera;->i:Ljava/lang/Integer;

    iget-object p1, p1, Lua/nav/cameras/SpeedCamera;->i:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/cameras/SpeedCamera;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lua/nav/cameras/SpeedCamera;->b:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/cameras/SpeedCamera;->c:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/cameras/SpeedCamera;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lua/nav/cameras/SpeedCamera;->f:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/cameras/SpeedCamera;->g:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/cameras/SpeedCamera;->h:Ljava/lang/String;

    invoke-static {v0, v1, v3}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lua/nav/cameras/SpeedCamera;->i:Ljava/lang/Integer;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeedCamera(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/cameras/SpeedCamera;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/cameras/SpeedCamera;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    const-string v2, ", limit="

    iget-wide v3, p0, Lua/nav/cameras/SpeedCamera;->c:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-object v1, p0, Lua/nav/cameras/SpeedCamera;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/cameras/SpeedCamera;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", road="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", km="

    const-string v2, ", region="

    iget-object v3, p0, Lua/nav/cameras/SpeedCamera;->f:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/cameras/SpeedCamera;->g:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/cameras/SpeedCamera;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bearing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lua/nav/cameras/SpeedCamera;->i:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
