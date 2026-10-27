.class public final Lua/nav/net/EntitlementDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/net/EntitlementDto$$serializer;,
        Lua/nav/net/EntitlementDto$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/net/EntitlementDto$Companion;

.field public static final l:[Lt8/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/Long;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Z

.field public final h:Ljava/lang/Long;

.field public final i:I

.field public final j:Z

.field public final k:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/net/EntitlementDto$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/net/EntitlementDto;->Companion:Lua/nav/net/EntitlementDto$Companion;

    sget-object v0, Lt8/h;->l:Lt8/h;

    new-instance v1, La1/b;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, La1/b;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [Lt8/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x3

    aput-object v3, v1, v0

    const/4 v0, 0x4

    aput-object v3, v1, v0

    const/4 v0, 0x5

    aput-object v3, v1, v0

    const/4 v0, 0x6

    aput-object v3, v1, v0

    const/4 v0, 0x7

    aput-object v3, v1, v0

    const/16 v0, 0x8

    aput-object v3, v1, v0

    const/16 v0, 0x9

    aput-object v3, v1, v0

    const/16 v0, 0xa

    aput-object v3, v1, v0

    sput-object v1, Lua/nav/net/EntitlementDto;->l:[Lt8/g;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;ZLjava/lang/String;ZLjava/lang/Long;IZJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const-string p2, "free"

    :cond_0
    iput-object p2, p0, Lua/nav/net/EntitlementDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iput-object v0, p0, Lua/nav/net/EntitlementDto;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lua/nav/net/EntitlementDto;->b:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    sget-object p2, Lu8/r;->l:Lu8/r;

    iput-object p2, p0, Lua/nav/net/EntitlementDto;->c:Ljava/util/List;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lua/nav/net/EntitlementDto;->c:Ljava/util/List;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lua/nav/net/EntitlementDto;->d:Ljava/lang/Long;

    goto :goto_2

    :cond_3
    iput-object p5, p0, Lua/nav/net/EntitlementDto;->d:Ljava/lang/Long;

    :goto_2
    and-int/lit8 p2, p1, 0x10

    const/4 p3, 0x0

    if-nez p2, :cond_4

    iput-boolean p3, p0, Lua/nav/net/EntitlementDto;->e:Z

    goto :goto_3

    :cond_4
    iput-boolean p6, p0, Lua/nav/net/EntitlementDto;->e:Z

    :goto_3
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object v0, p0, Lua/nav/net/EntitlementDto;->f:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iput-object p7, p0, Lua/nav/net/EntitlementDto;->f:Ljava/lang/String;

    :goto_4
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-boolean p3, p0, Lua/nav/net/EntitlementDto;->g:Z

    goto :goto_5

    :cond_6
    iput-boolean p8, p0, Lua/nav/net/EntitlementDto;->g:Z

    :goto_5
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object v0, p0, Lua/nav/net/EntitlementDto;->h:Ljava/lang/Long;

    goto :goto_6

    :cond_7
    iput-object p9, p0, Lua/nav/net/EntitlementDto;->h:Ljava/lang/Long;

    :goto_6
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    const/16 p2, 0xf

    iput p2, p0, Lua/nav/net/EntitlementDto;->i:I

    goto :goto_7

    :cond_8
    iput p10, p0, Lua/nav/net/EntitlementDto;->i:I

    :goto_7
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-boolean p3, p0, Lua/nav/net/EntitlementDto;->j:Z

    goto :goto_8

    :cond_9
    iput-boolean p11, p0, Lua/nav/net/EntitlementDto;->j:Z

    :goto_8
    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_a

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lua/nav/net/EntitlementDto;->k:J

    return-void

    :cond_a
    iput-wide p12, p0, Lua/nav/net/EntitlementDto;->k:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/net/EntitlementDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/net/EntitlementDto;

    iget-object v1, p0, Lua/nav/net/EntitlementDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/net/EntitlementDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/net/EntitlementDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/net/EntitlementDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/net/EntitlementDto;->c:Ljava/util/List;

    iget-object v3, p1, Lua/nav/net/EntitlementDto;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lua/nav/net/EntitlementDto;->d:Ljava/lang/Long;

    iget-object v3, p1, Lua/nav/net/EntitlementDto;->d:Ljava/lang/Long;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lua/nav/net/EntitlementDto;->e:Z

    iget-boolean v3, p1, Lua/nav/net/EntitlementDto;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lua/nav/net/EntitlementDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/net/EntitlementDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lua/nav/net/EntitlementDto;->g:Z

    iget-boolean v3, p1, Lua/nav/net/EntitlementDto;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lua/nav/net/EntitlementDto;->h:Ljava/lang/Long;

    iget-object v3, p1, Lua/nav/net/EntitlementDto;->h:Ljava/lang/Long;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lua/nav/net/EntitlementDto;->i:I

    iget v3, p1, Lua/nav/net/EntitlementDto;->i:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lua/nav/net/EntitlementDto;->j:Z

    iget-boolean v3, p1, Lua/nav/net/EntitlementDto;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lua/nav/net/EntitlementDto;->k:J

    iget-wide p0, p1, Lua/nav/net/EntitlementDto;->k:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/net/EntitlementDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lua/nav/net/EntitlementDto;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/net/EntitlementDto;->c:Ljava/util/List;

    invoke-static {v3, v0, v1}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lua/nav/net/EntitlementDto;->d:Ljava/lang/Long;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lua/nav/net/EntitlementDto;->e:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v3, p0, Lua/nav/net/EntitlementDto;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lua/nav/net/EntitlementDto;->g:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v3, p0, Lua/nav/net/EntitlementDto;->h:Ljava/lang/Long;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lua/nav/net/EntitlementDto;->i:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-boolean v2, p0, Lua/nav/net/EntitlementDto;->j:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-wide v1, p0, Lua/nav/net/EntitlementDto;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", tier_title="

    const-string v1, ", features="

    const-string v2, "EntitlementDto(plan="

    iget-object v3, p0, Lua/nav/net/EntitlementDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/net/EntitlementDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lua/nav/net/EntitlementDto;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expires_at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/net/EntitlementDto;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lifetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lua/nav/net/EntitlementDto;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/net/EntitlementDto;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", gating_enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lua/nav/net/EntitlementDto;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gating_since="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/net/EntitlementDto;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trial_days="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lua/nav/net/EntitlementDto;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tg_linked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lua/nav/net/EntitlementDto;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", server_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-wide v2, p0, Lua/nav/net/EntitlementDto;->k:J

    invoke-static {v2, v3, v1, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
