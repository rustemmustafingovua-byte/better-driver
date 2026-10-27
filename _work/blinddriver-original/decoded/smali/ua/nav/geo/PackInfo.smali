.class public final Lua/nav/geo/PackInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/geo/PackInfo$$serializer;,
        Lua/nav/geo/PackInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/geo/PackInfo$Companion;

.field public static final i:[Lt8/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:J

.field public final g:J

.field public final h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/geo/PackInfo$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/geo/PackInfo;->Companion:Lua/nav/geo/PackInfo$Companion;

    sget-object v0, Lt8/h;->l:Lt8/h;

    new-instance v1, Lsc/i;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lsc/i;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    const/16 v1, 0x8

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

    sput-object v1, Lua/nav/geo/PackInfo;->i:[Lt8/g;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/List;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3f

    const/16 v1, 0x3f

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iput-object p3, p0, Lua/nav/geo/PackInfo;->b:Ljava/lang/String;

    iput-object p4, p0, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    iput-object p5, p0, Lua/nav/geo/PackInfo;->d:Ljava/lang/String;

    iput-object p6, p0, Lua/nav/geo/PackInfo;->e:Ljava/lang/String;

    iput-wide p7, p0, Lua/nav/geo/PackInfo;->f:J

    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_0

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lua/nav/geo/PackInfo;->g:J

    goto :goto_0

    :cond_0
    iput-wide p9, p0, Lua/nav/geo/PackInfo;->g:J

    :goto_0
    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    sget-object p1, Lu8/r;->l:Lu8/r;

    iput-object p1, p0, Lua/nav/geo/PackInfo;->h:Ljava/util/List;

    return-void

    :cond_1
    iput-object p11, p0, Lua/nav/geo/PackInfo;->h:Ljava/util/List;

    return-void

    :cond_2
    sget-object p0, Lua/nav/geo/PackInfo$$serializer;->INSTANCE:Lua/nav/geo/PackInfo$$serializer;

    invoke-virtual {p0}, Lua/nav/geo/PackInfo$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

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
    instance-of v1, p1, Lua/nav/geo/PackInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/geo/PackInfo;

    iget-object v1, p0, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/geo/PackInfo;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/geo/PackInfo;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lua/nav/geo/PackInfo;->d:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/geo/PackInfo;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lua/nav/geo/PackInfo;->e:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/geo/PackInfo;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lua/nav/geo/PackInfo;->f:J

    iget-wide v5, p1, Lua/nav/geo/PackInfo;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lua/nav/geo/PackInfo;->g:J

    iget-wide v5, p1, Lua/nav/geo/PackInfo;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lua/nav/geo/PackInfo;->h:Ljava/util/List;

    iget-object p1, p1, Lua/nav/geo/PackInfo;->h:Ljava/util/List;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/geo/PackInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/geo/PackInfo;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/geo/PackInfo;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lua/nav/geo/PackInfo;->f:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/geo/PackInfo;->g:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-object p0, p0, Lua/nav/geo/PackInfo;->h:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", version="

    const-string v2, "PackInfo(id="

    iget-object v3, p0, Lua/nav/geo/PackInfo;->a:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/geo/PackInfo;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url="

    const-string v2, ", sha256="

    iget-object v3, p0, Lua/nav/geo/PackInfo;->c:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/geo/PackInfo;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/geo/PackInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/geo/PackInfo;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dbBytes="

    const-string v2, ", bounds="

    iget-wide v3, p0, Lua/nav/geo/PackInfo;->g:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-object p0, p0, Lua/nav/geo/PackInfo;->h:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
