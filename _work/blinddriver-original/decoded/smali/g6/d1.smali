.class public final Lg6/d1;
.super Lg6/m1;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public final o:Lb6/n;


# direct methods
.method public constructor <init>(Lb6/n;)V
    .locals 1

    const-class v0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lg6/d1;->o:Lb6/n;

    return-void
.end method


# virtual methods
.method public final Z(Ls5/k;Lb6/i;)Ljava/lang/StackTraceElement;
    .locals 3

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->u:Ls5/n;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Ls5/n;->w:Ls5/n;

    if-ne v0, v1, :cond_2

    sget-object v0, Lb6/j;->F:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {p0, p1, p2}, Lg6/d1;->Z(Ls5/k;Lb6/i;)Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p1

    sget-object v1, Ls5/n;->x:Ls5/n;

    if-ne p1, v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p2}, Lg6/f1;->X(Lb6/i;)V

    throw v2

    :cond_2
    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v2

    :cond_3
    :goto_0
    iget-object p0, p0, Lg6/d1;->o:Lb6/n;

    if-nez p0, :cond_7

    const-class p0, Lg6/c1;

    invoke-virtual {p2}, Lb6/i;->u()Lt6/p;

    move-result-object v0

    invoke-virtual {v0, p0}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object p0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, p0}, Ls5/k;->q0(Ls5/n;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not find JsonDeserializer for type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v2

    :cond_7
    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_8

    :goto_2
    throw v2

    :cond_8
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg6/d1;->Z(Ls5/k;Lb6/i;)Ljava/lang/StackTraceElement;

    move-result-object p0

    return-object p0
.end method
