.class public final Lz7/o;
.super Lz7/n;
.source "SourceFile"


# instance fields
.field public final b:Ly7/o;


# direct methods
.method public constructor <init>(Ly7/o;Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0, p2}, Lz7/n;-><init>(Ljava/util/LinkedHashMap;)V

    iput-object p1, p0, Lz7/o;->b:Ly7/o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lz7/o;->b:Ly7/o;

    invoke-interface {p0}, Ly7/o;->f()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public final c(Ljava/lang/Object;Le8/b;Lz7/m;)V
    .locals 1

    iget-object p0, p3, Lz7/m;->b:Ljava/lang/reflect/Field;

    iget-object v0, p3, Lz7/m;->h:Lw7/u;

    invoke-virtual {v0, p2}, Lw7/u;->read(Le8/b;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    iget-boolean v0, p3, Lz7/m;->k:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-boolean p3, p3, Lz7/m;->l:Z

    if-nez p3, :cond_2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lb8/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lw7/n;

    const-string p2, "Cannot set value of \'static final\' "

    invoke-static {p2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
