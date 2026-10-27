.class public final Le1/g;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final l:Le1/a;


# direct methods
.method public constructor <init>(Le1/a;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Le1/g;->l:Le1/a;

    invoke-virtual {p1}, Le1/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ll9/a;->k(Le1/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/StackTraceElement;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le1/c;

    new-instance v4, Ljava/lang/StackTraceElement;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "m$"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Le1/c;->a:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SourceFile"

    const-string v6, "$$compose"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v3, v5, v7}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final fillInStackTrace()Ljava/lang/Throwable;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 7

    iget-object p0, p0, Le1/g;->l:Le1/a;

    invoke-virtual {p0}, Le1/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Composition stack when thrown:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le1/a;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lg5/f;->r()Lv8/b;

    move-result-object v1

    iget-object p0, p0, Le1/a;->a:Ljava/util/List;

    const-string v3, "<this>"

    invoke-static {p0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lr9/e;

    invoke-direct {v4, p0}, Lr9/e;-><init>(Ljava/util/List;)V

    invoke-virtual {v4}, Lu8/a;->a()I

    move-result p0

    move v5, v2

    :goto_0
    if-ge v5, p0, :cond_0

    invoke-virtual {v4, v5}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le1/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lg5/f;->n(Lv8/b;)Lv8/b;

    move-result-object p0

    invoke-static {p0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lr9/e;

    invoke-direct {v1, p0}, Lr9/e;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lu8/a;->a()I

    move-result p0

    :goto_1
    if-ge v2, p0, :cond_2

    invoke-virtual {v1, v2}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\tat "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ll9/a;->k(Le1/a;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_2
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le1/c;

    const-string v4, "\tat $$compose.m$"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Le1/c;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "(SourceFile:1)\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    const-string p0, "Composition stack when thrown:"

    return-object p0
.end method
