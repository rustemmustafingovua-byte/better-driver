.class public final Lr5/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final n:Lr5/n0;


# instance fields
.field public final l:Lr5/b1;

.field public final m:Lr5/b1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr5/n0;

    sget-object v1, Lr5/b1;->o:Lr5/b1;

    invoke-direct {v0, v1, v1}, Lr5/n0;-><init>(Lr5/b1;Lr5/b1;)V

    sput-object v0, Lr5/n0;->n:Lr5/n0;

    return-void
.end method

.method public constructor <init>(Lr5/b1;Lr5/b1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/n0;->l:Lr5/b1;

    iput-object p2, p0, Lr5/n0;->m:Lr5/b1;

    return-void
.end method


# virtual methods
.method public final a()Lr5/b1;
    .locals 1

    sget-object v0, Lr5/b1;->o:Lr5/b1;

    iget-object p0, p0, Lr5/n0;->m:Lr5/b1;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final b()Lr5/b1;
    .locals 1

    sget-object v0, Lr5/b1;->o:Lr5/b1;

    iget-object p0, p0, Lr5/n0;->l:Lr5/b1;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lr5/n0;

    if-ne v2, v3, :cond_2

    check-cast p1, Lr5/n0;

    iget-object v2, p1, Lr5/n0;->l:Lr5/b1;

    iget-object v3, p0, Lr5/n0;->l:Lr5/b1;

    if-ne v2, v3, :cond_2

    iget-object p1, p1, Lr5/n0;->m:Lr5/b1;

    iget-object p0, p0, Lr5/n0;->m:Lr5/b1;

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lr5/n0;->l:Lr5/b1;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p0, p0, Lr5/n0;->m:Lr5/b1;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonSetter.Value(valueNulls="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lr5/n0;->l:Lr5/b1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",contentNulls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lr5/n0;->m:Lr5/b1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
