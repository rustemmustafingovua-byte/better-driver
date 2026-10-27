.class public final Lua/nav/support/DevMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/support/DevMessage$$serializer;,
        Lua/nav/support/DevMessage$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/support/DevMessage$Companion;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lua/nav/support/DevMessage$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/support/DevMessage;->Companion:Lua/nav/support/DevMessage$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/String;JZ)V
    .locals 2

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x7

    if-ne v1, v0, :cond_1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lua/nav/support/DevMessage;->a:J

    iput-object p4, p0, Lua/nav/support/DevMessage;->b:Ljava/lang/String;

    iput-wide p5, p0, Lua/nav/support/DevMessage;->c:J

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lua/nav/support/DevMessage;->d:Z

    return-void

    :cond_0
    iput-boolean p7, p0, Lua/nav/support/DevMessage;->d:Z

    return-void

    :cond_1
    sget-object p0, Lua/nav/support/DevMessage$$serializer;->INSTANCE:Lua/nav/support/DevMessage$$serializer;

    invoke-virtual {p0}, Lua/nav/support/DevMessage$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lha/n0;->e(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(JLjava/lang/String;JZ)V
    .locals 1

    const-string v0, "text"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lua/nav/support/DevMessage;->a:J

    iput-object p3, p0, Lua/nav/support/DevMessage;->b:Ljava/lang/String;

    iput-wide p4, p0, Lua/nav/support/DevMessage;->c:J

    iput-boolean p6, p0, Lua/nav/support/DevMessage;->d:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/support/DevMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/support/DevMessage;

    iget-wide v3, p0, Lua/nav/support/DevMessage;->a:J

    iget-wide v5, p1, Lua/nav/support/DevMessage;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lua/nav/support/DevMessage;->b:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/support/DevMessage;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lua/nav/support/DevMessage;->c:J

    iget-wide v5, p1, Lua/nav/support/DevMessage;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lua/nav/support/DevMessage;->d:Z

    iget-boolean p1, p1, Lua/nav/support/DevMessage;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lua/nav/support/DevMessage;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lua/nav/support/DevMessage;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lua/nav/support/DevMessage;->c:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-boolean p0, p0, Lua/nav/support/DevMessage;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DevMessage(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lua/nav/support/DevMessage;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lua/nav/support/DevMessage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ts="

    const-string v2, ", fromMe="

    iget-wide v3, p0, Lua/nav/support/DevMessage;->c:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-boolean p0, p0, Lua/nav/support/DevMessage;->d:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
