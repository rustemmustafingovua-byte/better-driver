.class public final Lua/nav/net/PlayVerifyDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/net/PlayVerifyDto$$serializer;,
        Lua/nav/net/PlayVerifyDto$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/net/PlayVerifyDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/net/PlayVerifyDto$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/net/PlayVerifyDto;->Companion:Lua/nav/net/PlayVerifyDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    const-string p1, ""

    iput-object p1, p0, Lua/nav/net/PlayVerifyDto;->a:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p2, p0, Lua/nav/net/PlayVerifyDto;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/net/PlayVerifyDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/net/PlayVerifyDto;

    iget-object p0, p0, Lua/nav/net/PlayVerifyDto;->a:Ljava/lang/String;

    iget-object p1, p1, Lua/nav/net/PlayVerifyDto;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lua/nav/net/PlayVerifyDto;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PlayVerifyDto(result="

    const-string v1, ")"

    iget-object p0, p0, Lua/nav/net/PlayVerifyDto;->a:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
