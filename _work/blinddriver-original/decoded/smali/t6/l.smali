.class public abstract Lt6/l;
.super Lb6/l;
.source "SourceFile"

# interfaces
.implements Lb6/s;


# static fields
.field public static final w:Lt6/o;


# instance fields
.field public final t:Lb6/l;

.field public final u:[Lb6/l;

.field public final v:Lt6/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt6/o;->r:Lt6/o;

    sput-object v0, Lt6/l;->w:Lt6/o;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lt6/o;Lb6/l;[Lb6/l;ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move-object v3, p6

    move-object v4, p7

    move v5, p8

    invoke-direct/range {v0 .. v5}, Lb6/l;-><init>(Ljava/lang/Class;ILjava/lang/Object;Ljava/lang/Object;Z)V

    if-nez p2, :cond_0

    sget-object p2, Lt6/l;->w:Lt6/o;

    :cond_0
    iput-object p2, v0, Lt6/l;->v:Lt6/o;

    iput-object p3, v0, Lt6/l;->t:Lb6/l;

    iput-object p4, v0, Lt6/l;->u:[Lb6/l;

    return-void
.end method

.method public static p0(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_0

    const/16 p0, 0x5a

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_1

    const/16 p0, 0x42

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_1
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_2

    const/16 p0, 0x53

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_3

    const/16 p0, 0x43

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_3
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_4

    const/16 p0, 0x49

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_4
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_5

    const/16 p0, 0x4a

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_5
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_6

    const/16 p0, 0x46

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_6
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_7

    const/16 p0, 0x44

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_7
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, p2, :cond_8

    const/16 p0, 0x56

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Unrecognized primitive type: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_a

    const/16 v2, 0x2f

    :cond_a
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    if-eqz p2, :cond_c

    const/16 p0, 0x3b

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    return-void
.end method


# virtual methods
.method public final J()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lt6/l;->r0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final O(Ljava/lang/Class;)Lb6/l;
    .locals 4

    iget-object v0, p0, Lb6/l;->o:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt6/l;->u:[Lb6/l;

    if-eqz v0, :cond_2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lb6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lt6/l;->t:Lb6/l;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lb6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public P()Lt6/o;
    .locals 0

    iget-object p0, p0, Lt6/l;->v:Lt6/o;

    return-object p0
.end method

.method public V()Lb6/l;
    .locals 0

    iget-object p0, p0, Lt6/l;->t:Lb6/l;

    return-object p0
.end method

.method public final a(Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 2

    new-instance v0, Lcom/fasterxml/jackson/core/type/b;

    sget-object v1, Ls5/n;->A:Ls5/n;

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/core/type/b;-><init>(Ljava/lang/Object;Ls5/n;)V

    invoke-virtual {p3, p1, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    invoke-virtual {p0, p1, p2}, Lt6/l;->d(Ls5/g;Lb6/r0;)V

    invoke-virtual {p3, p1, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 0

    invoke-virtual {p0}, Lt6/l;->r0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public final q0(I)Z
    .locals 0

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    array-length p0, p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public r0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
