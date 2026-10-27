.class public final Lua/nav/net/LinkTokenDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/net/LinkTokenDto$$serializer;,
        Lua/nav/net/LinkTokenDto$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/net/LinkTokenDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/net/LinkTokenDto$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/net/LinkTokenDto;->Companion:Lua/nav/net/LinkTokenDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p2, 0x1

    const-string v1, ""

    if-nez v0, :cond_0

    iput-object v1, p0, Lua/nav/net/LinkTokenDto;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lua/nav/net/LinkTokenDto;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    iput-object v1, p0, Lua/nav/net/LinkTokenDto;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lua/nav/net/LinkTokenDto;->b:Ljava/lang/String;

    :goto_1
    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lua/nav/net/LinkTokenDto;->c:I

    return-void

    :cond_2
    iput p4, p0, Lua/nav/net/LinkTokenDto;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/net/LinkTokenDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/net/LinkTokenDto;

    iget-object v1, p0, Lua/nav/net/LinkTokenDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/net/LinkTokenDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/net/LinkTokenDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/net/LinkTokenDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lua/nav/net/LinkTokenDto;->c:I

    iget p1, p1, Lua/nav/net/LinkTokenDto;->c:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lua/nav/net/LinkTokenDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/net/LinkTokenDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget p0, p0, Lua/nav/net/LinkTokenDto;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", bot="

    const-string v1, ", expires_in="

    const-string v2, "LinkTokenDto(token="

    iget-object v3, p0, Lua/nav/net/LinkTokenDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lua/nav/net/LinkTokenDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget p0, p0, Lua/nav/net/LinkTokenDto;->c:I

    invoke-static {p0, v1, v0}, Lm/a;->j(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
