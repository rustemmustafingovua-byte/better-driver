.class public final Lua/nav/alerts/AlertRegion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/alerts/AlertRegion$$serializer;,
        Lua/nav/alerts/AlertRegion$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/alerts/AlertRegion$Companion;

.field public static final j:[Lt8/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/Long;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lua/nav/alerts/AlertRegion$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/alerts/AlertRegion;->Companion:Lua/nav/alerts/AlertRegion$Companion;

    sget-object v0, Lt8/h;->l:Lt8/h;

    new-instance v1, Lsc/i;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lsc/i;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v1

    new-instance v2, Lsc/i;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lsc/i;-><init>(I)V

    invoke-static {v0, v2}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    const/16 v2, 0x9

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

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const/4 v1, 0x6

    aput-object v4, v2, v1

    const/4 v1, 0x7

    aput-object v4, v2, v1

    const/16 v1, 0x8

    aput-object v0, v2, v1

    sput-object v2, Lua/nav/alerts/AlertRegion;->j:[Lt8/g;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const-string v1, ""

    if-nez v0, :cond_0

    iput-object v1, p0, Lua/nav/alerts/AlertRegion;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lua/nav/alerts/AlertRegion;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v1, p0, Lua/nav/alerts/AlertRegion;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lua/nav/alerts/AlertRegion;->b:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v1, p0, Lua/nav/alerts/AlertRegion;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lua/nav/alerts/AlertRegion;->c:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    const/4 p3, 0x0

    if-nez p2, :cond_3

    iput-object p3, p0, Lua/nav/alerts/AlertRegion;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lua/nav/alerts/AlertRegion;->d:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object p3, p0, Lua/nav/alerts/AlertRegion;->e:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lua/nav/alerts/AlertRegion;->e:Ljava/lang/String;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    sget-object p4, Lu8/r;->l:Lu8/r;

    if-nez p2, :cond_5

    iput-object p4, p0, Lua/nav/alerts/AlertRegion;->f:Ljava/util/List;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lua/nav/alerts/AlertRegion;->f:Ljava/util/List;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-object p3, p0, Lua/nav/alerts/AlertRegion;->g:Ljava/lang/Long;

    goto :goto_6

    :cond_6
    iput-object p8, p0, Lua/nav/alerts/AlertRegion;->g:Ljava/lang/Long;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object p3, p0, Lua/nav/alerts/AlertRegion;->h:Ljava/lang/String;

    goto :goto_7

    :cond_7
    iput-object p9, p0, Lua/nav/alerts/AlertRegion;->h:Ljava/lang/String;

    :goto_7
    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_8

    iput-object p4, p0, Lua/nav/alerts/AlertRegion;->i:Ljava/util/List;

    return-void

    :cond_8
    iput-object p10, p0, Lua/nav/alerts/AlertRegion;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/alerts/AlertRegion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/alerts/AlertRegion;

    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/alerts/AlertRegion;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/alerts/AlertRegion;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->c:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/alerts/AlertRegion;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->d:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/alerts/AlertRegion;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->e:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/alerts/AlertRegion;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->f:Ljava/util/List;

    iget-object v3, p1, Lua/nav/alerts/AlertRegion;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->g:Ljava/lang/Long;

    iget-object v3, p1, Lua/nav/alerts/AlertRegion;->g:Ljava/lang/Long;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->h:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/alerts/AlertRegion;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lua/nav/alerts/AlertRegion;->i:Ljava/util/List;

    iget-object p1, p1, Lua/nav/alerts/AlertRegion;->i:Ljava/util/List;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/alerts/AlertRegion;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/alerts/AlertRegion;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lua/nav/alerts/AlertRegion;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lua/nav/alerts/AlertRegion;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/alerts/AlertRegion;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/alerts/AlertRegion;->f:Ljava/util/List;

    invoke-static {v3, v0, v1}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lua/nav/alerts/AlertRegion;->g:Ljava/lang/Long;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lua/nav/alerts/AlertRegion;->h:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lua/nav/alerts/AlertRegion;->i:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", type="

    const-string v1, ", name="

    const-string v2, "AlertRegion(id="

    iget-object v3, p0, Lua/nav/alerts/AlertRegion;->a:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/alerts/AlertRegion;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    const-string v2, ", district="

    iget-object v3, p0, Lua/nav/alerts/AlertRegion;->c:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/alerts/AlertRegion;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", since="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->g:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/alerts/AlertRegion;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lua/nav/alerts/AlertRegion;->i:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
