.class public final Lua/nav/routing/OsrmAnnotation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/routing/OsrmAnnotation$$serializer;,
        Lua/nav/routing/OsrmAnnotation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/routing/OsrmAnnotation$Companion;

.field public static final c:[Lt8/g;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/routing/OsrmAnnotation$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/routing/OsrmAnnotation;->Companion:Lua/nav/routing/OsrmAnnotation$Companion;

    sget-object v0, Lt8/h;->l:Lt8/h;

    new-instance v1, Lia/n;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lia/n;-><init>(I)V

    invoke-static {v0, v1}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v1

    new-instance v2, Lia/n;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lia/n;-><init>(I)V

    invoke-static {v0, v2}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lt8/g;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lua/nav/routing/OsrmAnnotation;->c:[Lt8/g;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lua/nav/routing/OsrmAnnotation;->a:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lua/nav/routing/OsrmAnnotation;->a:Ljava/util/List;

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iput-object v1, p0, Lua/nav/routing/OsrmAnnotation;->b:Ljava/util/List;

    return-void

    :cond_1
    iput-object p3, p0, Lua/nav/routing/OsrmAnnotation;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/routing/OsrmAnnotation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/routing/OsrmAnnotation;

    iget-object v1, p0, Lua/nav/routing/OsrmAnnotation;->a:Ljava/util/List;

    iget-object v3, p1, Lua/nav/routing/OsrmAnnotation;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lua/nav/routing/OsrmAnnotation;->b:Ljava/util/List;

    iget-object p1, p1, Lua/nav/routing/OsrmAnnotation;->b:Ljava/util/List;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lua/nav/routing/OsrmAnnotation;->a:Ljava/util/List;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lua/nav/routing/OsrmAnnotation;->b:Ljava/util/List;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OsrmAnnotation(maxspeed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/routing/OsrmAnnotation;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", congestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lua/nav/routing/OsrmAnnotation;->b:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
