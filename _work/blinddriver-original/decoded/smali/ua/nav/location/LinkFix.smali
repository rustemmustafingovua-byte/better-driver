.class public final Lua/nav/location/LinkFix;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/location/LinkFix$$serializer;,
        Lua/nav/location/LinkFix$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/location/LinkFix$Companion;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:D

.field public final d:D

.field public final e:I

.field public final f:J

.field public final g:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/location/LinkFix$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/location/LinkFix;->Companion:Lua/nav/location/LinkFix$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;DDIJJ)V
    .locals 2

    and-int/lit8 v0, p1, 0xe

    const/16 v1, 0xe

    if-ne v1, v0, :cond_4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput p2, p0, Lua/nav/location/LinkFix;->a:I

    iput-object p3, p0, Lua/nav/location/LinkFix;->b:Ljava/lang/String;

    iput-wide p4, p0, Lua/nav/location/LinkFix;->c:D

    iput-wide p6, p0, Lua/nav/location/LinkFix;->d:D

    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_1

    const/4 p2, -0x1

    iput p2, p0, Lua/nav/location/LinkFix;->e:I

    goto :goto_0

    :cond_1
    iput p8, p0, Lua/nav/location/LinkFix;->e:I

    :goto_0
    and-int/lit8 p2, p1, 0x20

    const-wide/16 p3, 0x0

    if-nez p2, :cond_2

    iput-wide p3, p0, Lua/nav/location/LinkFix;->f:J

    goto :goto_1

    :cond_2
    iput-wide p9, p0, Lua/nav/location/LinkFix;->f:J

    :goto_1
    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_3

    iput-wide p3, p0, Lua/nav/location/LinkFix;->g:J

    return-void

    :cond_3
    iput-wide p11, p0, Lua/nav/location/LinkFix;->g:J

    return-void

    :cond_4
    sget-object p0, Lua/nav/location/LinkFix$$serializer;->INSTANCE:Lua/nav/location/LinkFix$$serializer;

    invoke-virtual {p0}, Lua/nav/location/LinkFix$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/location/LinkFix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/location/LinkFix;

    iget v1, p0, Lua/nav/location/LinkFix;->a:I

    iget v3, p1, Lua/nav/location/LinkFix;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/location/LinkFix;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/location/LinkFix;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lua/nav/location/LinkFix;->c:D

    iget-wide v5, p1, Lua/nav/location/LinkFix;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lua/nav/location/LinkFix;->d:D

    iget-wide v5, p1, Lua/nav/location/LinkFix;->d:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lua/nav/location/LinkFix;->e:I

    iget v3, p1, Lua/nav/location/LinkFix;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lua/nav/location/LinkFix;->f:J

    iget-wide v5, p1, Lua/nav/location/LinkFix;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lua/nav/location/LinkFix;->g:J

    iget-wide p0, p1, Lua/nav/location/LinkFix;->g:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lua/nav/location/LinkFix;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/location/LinkFix;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lua/nav/location/LinkFix;->c:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/location/LinkFix;->d:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget v2, p0, Lua/nav/location/LinkFix;->e:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-wide v2, p0, Lua/nav/location/LinkFix;->f:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v1, p0, Lua/nav/location/LinkFix;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LinkFix(v="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lua/nav/location/LinkFix;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/location/LinkFix;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/location/LinkFix;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", lon="

    const-string v2, ", acc="

    iget-wide v3, p0, Lua/nav/location/LinkFix;->d:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget v1, p0, Lua/nav/location/LinkFix;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ageMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/location/LinkFix;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/location/LinkFix;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
