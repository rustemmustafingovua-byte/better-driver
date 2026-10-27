.class public abstract Lj5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DiagnosticsWrkr"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tagWithPrefix(\"DiagnosticsWrkr\")"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lj5/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Lg5/l;Lg5/s;Lg5/i;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 19

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n Id \t Class Name\t Job Id\t State\t Unique Name\t Tags\t"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    move-object/from16 v4, p3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lg5/o;

    invoke-static {v5}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v6

    iget-object v7, v5, Lg5/o;->a:Ljava/lang/String;

    move-object/from16 v8, p2

    invoke-virtual {v8, v6}, Lg5/i;->s(Lg5/j;)Lg5/g;

    move-result-object v6

    if-eqz v6, :cond_0

    iget v6, v6, Lg5/g;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "SELECT name FROM workname WHERE work_spec_id=?"

    const/4 v10, 0x1

    invoke-static {v10, v9}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v9

    invoke-virtual {v9, v10, v7}, Lk4/n;->h(ILjava/lang/String;)V

    move-object/from16 v10, p0

    iget-object v11, v10, Lg5/l;->m:Ljava/lang/Object;

    check-cast v11, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v11, v9}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v11

    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Lk4/n;->c()V

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const-string v13, ","

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v12, p1

    invoke-virtual {v12, v7}, Lg5/s;->L(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    const/16 v17, 0x0

    const/16 v18, 0x3e

    const-string v14, ","

    invoke-static/range {v13 .. v18}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "\n"

    const-string v14, "\t "

    invoke-static {v13, v7, v14}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v13, v5, Lg5/o;->c:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lg5/o;->b:I

    packed-switch v5, :pswitch_data_0

    const/4 v0, 0x0

    throw v0

    :pswitch_0
    const-string v5, "CANCELLED"

    goto :goto_3

    :pswitch_1
    const-string v5, "BLOCKED"

    goto :goto_3

    :pswitch_2
    const-string v5, "FAILED"

    goto :goto_3

    :pswitch_3
    const-string v5, "SUCCEEDED"

    goto :goto_3

    :pswitch_4
    const-string v5, "RUNNING"

    goto :goto_3

    :pswitch_5
    const-string v5, "ENQUEUED"

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x9

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v9}, Lk4/n;->c()V

    throw v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
