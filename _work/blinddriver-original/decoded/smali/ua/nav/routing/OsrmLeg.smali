.class public final Lua/nav/routing/OsrmLeg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/routing/OsrmLeg$$serializer;,
        Lua/nav/routing/OsrmLeg$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/routing/OsrmLeg$Companion;

.field public static final d:[Lt8/g;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;

.field public final c:Lua/nav/routing/OsrmAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/OsrmLeg$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/OsrmLeg;->Companion:Lua/nav/routing/OsrmLeg$Companion;

    sget-object v0, Lt8/h;->l:Lt8/h;

    new-instance v1, Lia/n;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lia/n;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lt8/g;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    aput-object v3, v1, v0

    sput-object v1, Lua/nav/routing/OsrmLeg;->d:[Lt8/g;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;Lua/nav/routing/OsrmAnnotation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lua/nav/routing/OsrmLeg;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    sget-object p2, Lu8/r;->l:Lu8/r;

    iput-object p2, p0, Lua/nav/routing/OsrmLeg;->b:Ljava/util/List;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lua/nav/routing/OsrmLeg;->b:Ljava/util/List;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lua/nav/routing/OsrmLeg;->c:Lua/nav/routing/OsrmAnnotation;

    return-void

    :cond_2
    iput-object p4, p0, Lua/nav/routing/OsrmLeg;->c:Lua/nav/routing/OsrmAnnotation;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/routing/OsrmLeg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/routing/OsrmLeg;

    iget-object v1, p0, Lua/nav/routing/OsrmLeg;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/routing/OsrmLeg;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/routing/OsrmLeg;->b:Ljava/util/List;

    iget-object v3, p1, Lua/nav/routing/OsrmLeg;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lua/nav/routing/OsrmLeg;->c:Lua/nav/routing/OsrmAnnotation;

    iget-object p1, p1, Lua/nav/routing/OsrmLeg;->c:Lua/nav/routing/OsrmAnnotation;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lua/nav/routing/OsrmLeg;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/routing/OsrmLeg;->b:Ljava/util/List;

    invoke-static {v2, v0, v1}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v0

    iget-object p0, p0, Lua/nav/routing/OsrmLeg;->c:Lua/nav/routing/OsrmAnnotation;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lua/nav/routing/OsrmAnnotation;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OsrmLeg(summary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/routing/OsrmLeg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", steps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/routing/OsrmLeg;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", annotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lua/nav/routing/OsrmLeg;->c:Lua/nav/routing/OsrmAnnotation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
