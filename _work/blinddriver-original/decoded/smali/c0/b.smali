.class public abstract Lc0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lad/b2;

.field public static final b:Lc0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lad/b2;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lad/b2;-><init>(I)V

    sput-object v0, Lc0/b;->a:Lad/b2;

    new-instance v0, Lc0/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc0/a;-><init>(I)V

    sput-object v0, Lc0/b;->b:Lc0/a;

    return-void
.end method

.method public static final a(Ld0/a;Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 14

    invoke-static/range {p4 .. p5}, Lp2/l0;->c(J)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lc0/b;->a:Lad/b2;

    invoke-virtual {v1, p1}, Lad/b2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ld0/a;->a()V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    new-instance v5, Le0/a;

    invoke-direct {v5, v4}, Le0/a;-><init>(I)V

    invoke-virtual {v8, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v6, Lc0/c;

    move-object v7, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    invoke-direct/range {v6 .. v12}, Lc0/c;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;ZLjava/lang/CharSequence;J)V

    new-instance v7, Le0/d;

    invoke-direct {v7, v5, v13, v3, v6}, Le0/d;-><init>(Ljava/lang/Object;Ljava/lang/String;ILi9/c;)V

    iget-object v5, p0, Ld0/a;->a:Lk/h0;

    invoke-virtual {v5, v7}, Lk/h0;->a(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ld0/a;->a()V

    :cond_3
    :goto_1
    return-void
.end method
