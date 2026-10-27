.class public final Lg5/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/work/impl/WorkDatabase_Impl;

.field public final b:Lg5/b;

.field public final c:Lg5/h;

.field public final d:Lg5/h;

.field public final e:Lg5/h;

.field public final f:Lg5/h;

.field public final g:Lg5/h;

.field public final h:Lg5/h;

.field public final i:Lg5/h;

.field public final j:Lg5/h;

.field public final k:Lg5/h;

.field public final l:Lg5/h;

.field public final m:Lg5/h;

.field public final n:Lg5/h;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    new-instance v0, Lg5/b;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lg5/b;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->b:Lg5/b;

    new-instance v0, Lg5/h;

    const/16 v1, 0xc

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    new-instance v0, Lg5/h;

    const/16 v1, 0xd

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->c:Lg5/h;

    new-instance v0, Lg5/h;

    const/16 v1, 0xe

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->d:Lg5/h;

    new-instance v0, Lg5/h;

    const/16 v1, 0xf

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->e:Lg5/h;

    new-instance v0, Lg5/h;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->f:Lg5/h;

    new-instance v0, Lg5/h;

    const/16 v1, 0x11

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->g:Lg5/h;

    new-instance v0, Lg5/h;

    const/16 v1, 0x12

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->h:Lg5/h;

    new-instance v0, Lg5/h;

    const/16 v1, 0x13

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->i:Lg5/h;

    new-instance v0, Lg5/h;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->j:Lg5/h;

    new-instance v0, Lg5/h;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    new-instance v0, Lg5/h;

    const/4 v1, 0x6

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->k:Lg5/h;

    new-instance v0, Lg5/h;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->l:Lg5/h;

    new-instance v0, Lg5/h;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->m:Lg5/h;

    new-instance v0, Lg5/h;

    const/16 v1, 0x9

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    new-instance v0, Lg5/h;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    new-instance v0, Lg5/h;

    const/16 v1, 0xb

    invoke-direct {v0, p1, v1}, Lg5/h;-><init>(Landroidx/work/impl/WorkDatabase;I)V

    iput-object v0, p0, Lg5/q;->n:Lg5/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lg5/q;->c:Lg5/h;

    invoke-virtual {p0}, Lk4/p;->a()Lr4/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lr4/i;->b()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    throw p1
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 80

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    const/16 v2, 0xc8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lk4/n;->p(IJ)V

    move-object/from16 v2, p0

    iget-object v2, v2, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v2, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    invoke-static {v2, v3}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "state"

    invoke-static {v2, v4}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v2, v5}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v2, v6}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v2, v7}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v2, v8}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v2, v9}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v2, v10}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v2, v11}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v2, v12}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v2, v13}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v2, v14}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v2, v15}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "minimum_retention_duration"

    invoke-static {v2, v0}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "run_in_foreground"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "period_count"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "next_schedule_time_override"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "next_schedule_time_override_generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "stop_reason"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "trace_tag"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "required_network_type"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "required_network_request"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "requires_charging"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "requires_device_idle"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v33, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v34, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->q(I)I

    move-result v37

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lx4/h;->a([B)Lx4/h;

    move-result-object v40

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lx4/h;->a([B)Lx4/h;

    move-result-object v41

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->n(I)I

    move-result v50

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    move/from16 v34, v0

    move/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move/from16 p0, v0

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v35, 0x0

    if-eqz v17, :cond_0

    const/16 v59, 0x1

    :goto_1
    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_2

    :cond_0
    move/from16 v59, v35

    goto :goto_1

    :goto_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lr5/h1;->p(I)I

    move-result v60

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_1

    const/16 v24, 0x0

    :goto_3
    move-object/from16 v67, v24

    move/from16 v24, v0

    move/from16 v0, v25

    goto :goto_4

    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_3

    :goto_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lr5/h1;->o(I)I

    move-result v70

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lr5/h1;->H([B)Lh5/e;

    move-result-object v69

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_2

    const/16 v71, 0x1

    :goto_5
    move/from16 v27, v0

    move/from16 v0, v28

    goto :goto_6

    :cond_2
    move/from16 v71, v35

    goto :goto_5

    :goto_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_3

    const/16 v72, 0x1

    :goto_7
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_8

    :cond_3
    move/from16 v72, v35

    goto :goto_7

    :goto_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_4

    const/16 v73, 0x1

    :goto_9
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_a

    :cond_4
    move/from16 v73, v35

    goto :goto_9

    :goto_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_5

    const/16 v74, 0x1

    :goto_b
    move/from16 v30, v0

    move/from16 v0, v31

    goto :goto_c

    :cond_5
    move/from16 v74, v35

    goto :goto_b

    :goto_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v75

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v77

    move/from16 v32, v0

    move/from16 v0, v33

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lr5/h1;->c([B)Ljava/util/LinkedHashSet;

    move-result-object v79

    new-instance v48, Lx4/d;

    move-object/from16 v68, v48

    invoke-direct/range {v68 .. v79}, Lx4/d;-><init>(Lh5/e;IZZZZJJLjava/util/Set;)V

    move-object/from16 v48, v68

    new-instance v35, Lg5/o;

    invoke-direct/range {v35 .. v67}, Lg5/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIIJIILjava/lang/String;)V

    move/from16 v33, v0

    move-object/from16 v0, v35

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    throw v0
.end method

.method public final c(I)Ljava/util/ArrayList;
    .locals 79

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    move/from16 v2, p1

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lk4/n;->p(IJ)V

    move-object/from16 v2, p0

    iget-object v2, v2, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v2, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    invoke-static {v2, v3}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "state"

    invoke-static {v2, v4}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v2, v5}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v2, v6}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v2, v7}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v2, v8}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v2, v9}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v2, v10}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v2, v11}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v2, v12}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v2, v13}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v2, v14}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v2, v15}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "minimum_retention_duration"

    invoke-static {v2, v0}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "run_in_foreground"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "period_count"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "next_schedule_time_override"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "next_schedule_time_override_generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "stop_reason"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "trace_tag"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "required_network_type"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "required_network_request"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "requires_charging"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "requires_device_idle"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v33, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->q(I)I

    move-result v36

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lx4/h;->a([B)Lx4/h;

    move-result-object v39

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lx4/h;->a([B)Lx4/h;

    move-result-object v40

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->n(I)I

    move-result v49

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    move/from16 v0, v33

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v33, v0

    move/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 p0, v0

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    const/16 v47, 0x0

    if-eqz v34, :cond_0

    const/16 v58, 0x1

    :goto_1
    move/from16 p1, v0

    move/from16 v0, v17

    goto :goto_2

    :cond_0
    move/from16 v58, v47

    goto :goto_1

    :goto_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lr5/h1;->p(I)I

    move-result v59

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v64

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_1

    const/16 v23, 0x0

    :goto_3
    move-object/from16 v66, v23

    move/from16 v23, v0

    move/from16 v0, v24

    goto :goto_4

    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_3

    :goto_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Lr5/h1;->o(I)I

    move-result v69

    move/from16 v24, v0

    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lr5/h1;->H([B)Lh5/e;

    move-result-object v68

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_2

    const/16 v70, 0x1

    :goto_5
    move/from16 v26, v0

    move/from16 v0, v27

    goto :goto_6

    :cond_2
    move/from16 v70, v47

    goto :goto_5

    :goto_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_3

    const/16 v71, 0x1

    :goto_7
    move/from16 v27, v0

    move/from16 v0, v28

    goto :goto_8

    :cond_3
    move/from16 v71, v47

    goto :goto_7

    :goto_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_4

    const/16 v72, 0x1

    :goto_9
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_a

    :cond_4
    move/from16 v72, v47

    goto :goto_9

    :goto_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_5

    const/16 v73, 0x1

    :goto_b
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_c

    :cond_5
    move/from16 v73, v47

    goto :goto_b

    :goto_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v74

    move/from16 v30, v0

    move/from16 v0, v31

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lr5/h1;->c([B)Ljava/util/LinkedHashSet;

    move-result-object v78

    new-instance v47, Lx4/d;

    move-object/from16 v67, v47

    invoke-direct/range {v67 .. v78}, Lx4/d;-><init>(Lh5/e;IZZZZJJLjava/util/Set;)V

    move-object/from16 v47, v67

    new-instance v34, Lg5/o;

    invoke-direct/range {v34 .. v66}, Lg5/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIIJIILjava/lang/String;)V

    move/from16 v32, v0

    move-object/from16 v0, v34

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    throw v0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 80

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v2, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    invoke-static {v2, v3}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "state"

    invoke-static {v2, v4}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v2, v5}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v2, v6}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v2, v7}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v2, v8}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v2, v9}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v2, v10}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v2, v11}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v2, v12}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v2, v13}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v2, v14}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v2, v15}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "minimum_retention_duration"

    invoke-static {v2, v0}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "run_in_foreground"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "period_count"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "next_schedule_time_override"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "next_schedule_time_override_generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "stop_reason"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "trace_tag"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "required_network_type"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "required_network_request"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "requires_charging"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "requires_device_idle"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v33, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v34, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->q(I)I

    move-result v37

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lx4/h;->a([B)Lx4/h;

    move-result-object v40

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lx4/h;->a([B)Lx4/h;

    move-result-object v41

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->n(I)I

    move-result v50

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    move/from16 v34, v0

    move/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move/from16 p0, v0

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v35, 0x1

    if-eqz v17, :cond_0

    move/from16 v59, v35

    :goto_1
    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_2

    :cond_0
    const/16 v59, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lr5/h1;->p(I)I

    move-result v60

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_1

    const/16 v24, 0x0

    :goto_3
    move-object/from16 v67, v24

    move/from16 v24, v0

    move/from16 v0, v25

    goto :goto_4

    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_3

    :goto_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lr5/h1;->o(I)I

    move-result v70

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lr5/h1;->H([B)Lh5/e;

    move-result-object v69

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_2

    move/from16 v71, v35

    :goto_5
    move/from16 v27, v0

    move/from16 v0, v28

    goto :goto_6

    :cond_2
    const/16 v71, 0x0

    goto :goto_5

    :goto_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_3

    move/from16 v72, v35

    :goto_7
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_8

    :cond_3
    const/16 v72, 0x0

    goto :goto_7

    :goto_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_4

    move/from16 v73, v35

    :goto_9
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_a

    :cond_4
    const/16 v73, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_5

    move/from16 v74, v35

    :goto_b
    move/from16 v30, v0

    move/from16 v0, v31

    goto :goto_c

    :cond_5
    const/16 v74, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v75

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v77

    move/from16 v32, v0

    move/from16 v0, v33

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lr5/h1;->c([B)Ljava/util/LinkedHashSet;

    move-result-object v79

    new-instance v48, Lx4/d;

    move-object/from16 v68, v48

    invoke-direct/range {v68 .. v79}, Lx4/d;-><init>(Lh5/e;IZZZZJJLjava/util/Set;)V

    move-object/from16 v48, v68

    new-instance v35, Lg5/o;

    invoke-direct/range {v35 .. v67}, Lg5/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIIJIILjava/lang/String;)V

    move/from16 v33, v0

    move-object/from16 v0, v35

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    throw v0
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 80

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM workspec WHERE state=1"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v2, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    invoke-static {v2, v3}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "state"

    invoke-static {v2, v4}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v2, v5}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v2, v6}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v2, v7}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v2, v8}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v2, v9}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v2, v10}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v2, v11}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v2, v12}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v2, v13}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v2, v14}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v2, v15}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "minimum_retention_duration"

    invoke-static {v2, v0}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "run_in_foreground"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "period_count"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "next_schedule_time_override"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "next_schedule_time_override_generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "stop_reason"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "trace_tag"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "required_network_type"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "required_network_request"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "requires_charging"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "requires_device_idle"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v33, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v34, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->q(I)I

    move-result v37

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lx4/h;->a([B)Lx4/h;

    move-result-object v40

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lx4/h;->a([B)Lx4/h;

    move-result-object v41

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->n(I)I

    move-result v50

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    move/from16 v34, v0

    move/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move/from16 p0, v0

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v35, 0x1

    if-eqz v17, :cond_0

    move/from16 v59, v35

    :goto_1
    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_2

    :cond_0
    const/16 v59, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lr5/h1;->p(I)I

    move-result v60

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_1

    const/16 v24, 0x0

    :goto_3
    move-object/from16 v67, v24

    move/from16 v24, v0

    move/from16 v0, v25

    goto :goto_4

    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_3

    :goto_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lr5/h1;->o(I)I

    move-result v70

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lr5/h1;->H([B)Lh5/e;

    move-result-object v69

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_2

    move/from16 v71, v35

    :goto_5
    move/from16 v27, v0

    move/from16 v0, v28

    goto :goto_6

    :cond_2
    const/16 v71, 0x0

    goto :goto_5

    :goto_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_3

    move/from16 v72, v35

    :goto_7
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_8

    :cond_3
    const/16 v72, 0x0

    goto :goto_7

    :goto_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_4

    move/from16 v73, v35

    :goto_9
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_a

    :cond_4
    const/16 v73, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_5

    move/from16 v74, v35

    :goto_b
    move/from16 v30, v0

    move/from16 v0, v31

    goto :goto_c

    :cond_5
    const/16 v74, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v75

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v77

    move/from16 v32, v0

    move/from16 v0, v33

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lr5/h1;->c([B)Ljava/util/LinkedHashSet;

    move-result-object v79

    new-instance v48, Lx4/d;

    move-object/from16 v68, v48

    invoke-direct/range {v68 .. v79}, Lx4/d;-><init>(Lh5/e;IZZZZJJLjava/util/Set;)V

    move-object/from16 v48, v68

    new-instance v35, Lg5/o;

    invoke-direct/range {v35 .. v67}, Lg5/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIIJIILjava/lang/String;)V

    move/from16 v33, v0

    move-object/from16 v0, v35

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    throw v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 80

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v2, v2, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v2, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    invoke-static {v2, v3}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "state"

    invoke-static {v2, v4}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v2, v5}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v2, v6}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v2, v7}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v2, v8}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v2, v9}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v2, v10}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v2, v11}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v2, v12}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v2, v13}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v2, v14}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v2, v15}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "minimum_retention_duration"

    invoke-static {v2, v0}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "run_in_foreground"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "period_count"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "next_schedule_time_override"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "next_schedule_time_override_generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "stop_reason"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "trace_tag"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "required_network_type"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "required_network_request"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "requires_charging"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "requires_device_idle"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v33, v1

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v34, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->q(I)I

    move-result v37

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lx4/h;->a([B)Lx4/h;

    move-result-object v40

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lx4/h;->a([B)Lx4/h;

    move-result-object v41

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->n(I)I

    move-result v50

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v53

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    move/from16 v34, v0

    move/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    move/from16 p0, v0

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v35, 0x1

    if-eqz v17, :cond_0

    move/from16 v59, v35

    :goto_1
    move/from16 v17, v0

    move/from16 v0, v18

    goto :goto_2

    :cond_0
    const/16 v59, 0x0

    goto :goto_1

    :goto_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lr5/h1;->p(I)I

    move-result v60

    move/from16 v18, v0

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    move/from16 v19, v0

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    move/from16 v20, v0

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v63

    move/from16 v21, v0

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    move/from16 v22, v0

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    move/from16 v23, v0

    move/from16 v0, v24

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_1

    const/16 v24, 0x0

    :goto_3
    move-object/from16 v67, v24

    move/from16 v24, v0

    move/from16 v0, v25

    goto :goto_4

    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_3

    :goto_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Lr5/h1;->o(I)I

    move-result v70

    move/from16 v25, v0

    move/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lr5/h1;->H([B)Lh5/e;

    move-result-object v69

    move/from16 v26, v0

    move/from16 v0, v27

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    if-eqz v27, :cond_2

    move/from16 v71, v35

    :goto_5
    move/from16 v27, v0

    move/from16 v0, v28

    goto :goto_6

    :cond_2
    const/16 v71, 0x0

    goto :goto_5

    :goto_6
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    if-eqz v28, :cond_3

    move/from16 v72, v35

    :goto_7
    move/from16 v28, v0

    move/from16 v0, v29

    goto :goto_8

    :cond_3
    const/16 v72, 0x0

    goto :goto_7

    :goto_8
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_4

    move/from16 v73, v35

    :goto_9
    move/from16 v29, v0

    move/from16 v0, v30

    goto :goto_a

    :cond_4
    const/16 v73, 0x0

    goto :goto_9

    :goto_a
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_5

    move/from16 v74, v35

    :goto_b
    move/from16 v30, v0

    move/from16 v0, v31

    goto :goto_c

    :cond_5
    const/16 v74, 0x0

    goto :goto_b

    :goto_c
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v75

    move/from16 v31, v0

    move/from16 v0, v32

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v77

    move/from16 v32, v0

    move/from16 v0, v33

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lr5/h1;->c([B)Ljava/util/LinkedHashSet;

    move-result-object v79

    new-instance v48, Lx4/d;

    move-object/from16 v68, v48

    invoke-direct/range {v68 .. v79}, Lx4/d;-><init>(Lh5/e;IZZZZJJLjava/util/Set;)V

    move-object/from16 v48, v68

    new-instance v35, Lg5/o;

    invoke-direct/range {v35 .. v67}, Lg5/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIIJIILjava/lang/String;)V

    move/from16 v33, v0

    move-object/from16 v0, v35

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    throw v0
.end method

.method public final g(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    const-string v1, "SELECT state FROM workspec WHERE id=?"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lk4/n;->h(ILjava/lang/String;)V

    iget-object p0, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {p0, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lr5/h1;->q(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lk4/n;->c()V

    return v0

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lk4/n;->c()V

    throw p1
.end method

.method public final h(Ljava/lang/String;)Lg5/o;
    .locals 67

    const/4 v0, 0x1

    const-string v1, "SELECT * FROM workspec WHERE id=?"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v0, v2}, Lk4/n;->h(ILjava/lang/String;)V

    move-object/from16 v2, p0

    iget-object v2, v2, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v2, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v3, "id"

    invoke-static {v2, v3}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "state"

    invoke-static {v2, v4}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "worker_class_name"

    invoke-static {v2, v5}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "input_merger_class_name"

    invoke-static {v2, v6}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "input"

    invoke-static {v2, v7}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "output"

    invoke-static {v2, v8}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "initial_delay"

    invoke-static {v2, v9}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "interval_duration"

    invoke-static {v2, v10}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "flex_duration"

    invoke-static {v2, v11}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "run_attempt_count"

    invoke-static {v2, v12}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_policy"

    invoke-static {v2, v13}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "backoff_delay_duration"

    invoke-static {v2, v14}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "last_enqueue_time"

    invoke-static {v2, v15}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "minimum_retention_duration"

    invoke-static {v2, v0}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v1

    :try_start_1
    const-string v1, "schedule_requested_at"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "run_in_foreground"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p1, v1

    const-string v1, "out_of_quota_policy"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "period_count"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "next_schedule_time_override"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "next_schedule_time_override_generation"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "stop_reason"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "trace_tag"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "required_network_type"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "required_network_request"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "requires_charging"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "requires_device_idle"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v2, v1}, Lpc/h;->k(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v32

    const/16 v33, 0x0

    if-eqz v32, :cond_6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lr5/h1;->q(I)I

    move-result v36

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lx4/h;->a([B)Lx4/h;

    move-result-object v39

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lx4/h;->a([B)Lx4/h;

    move-result-object v40

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lr5/h1;->n(I)I

    move-result v49

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    move/from16 v0, p0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/16 v58, 0x1

    :goto_0
    move/from16 v0, v17

    goto :goto_1

    :cond_0
    move/from16 v58, v3

    goto :goto_0

    :goto_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->p(I)I

    move-result v59

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    move/from16 v0, v19

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v61

    move/from16 v0, v20

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v64

    move/from16 v0, v22

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v65

    move/from16 v0, v23

    invoke-interface {v2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_2
    move/from16 v0, v24

    move-object/from16 v66, v33

    goto :goto_3

    :cond_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    goto :goto_2

    :goto_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lr5/h1;->o(I)I

    move-result v6

    move/from16 v0, v25

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lr5/h1;->H([B)Lh5/e;

    move-result-object v5

    move/from16 v0, v26

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    :goto_4
    move/from16 v0, v27

    goto :goto_5

    :cond_2
    move v7, v3

    goto :goto_4

    :goto_5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    :goto_6
    move/from16 v0, v28

    goto :goto_7

    :cond_3
    move v8, v3

    goto :goto_6

    :goto_7
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    :goto_8
    move/from16 v0, v29

    goto :goto_9

    :cond_4
    move v9, v3

    goto :goto_8

    :goto_9
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v10, 0x1

    :goto_a
    move/from16 v0, v30

    goto :goto_b

    :cond_5
    move v10, v3

    goto :goto_a

    :goto_b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    move/from16 v0, v31

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lr5/h1;->c([B)Ljava/util/LinkedHashSet;

    move-result-object v15

    new-instance v47, Lx4/d;

    move-object/from16 v4, v47

    invoke-direct/range {v4 .. v15}, Lx4/d;-><init>(Lh5/e;IZZZZJJLjava/util/Set;)V

    move-object/from16 v47, v4

    new-instance v34, Lg5/o;

    invoke-direct/range {v34 .. v66}, Lg5/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIIJIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v33, v34

    goto :goto_c

    :catchall_0
    move-exception v0

    goto :goto_d

    :cond_6
    :goto_c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    return-object v33

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    :goto_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lk4/n;->c()V

    throw v0
.end method

.method public final i(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    const/4 v0, 0x1

    const-string v1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    invoke-static {v0, v1}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lk4/n;->h(ILjava/lang/String;)V

    iget-object p0, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {p0, v1}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lr5/h1;->q(I)I

    move-result v3

    new-instance v4, Lg5/n;

    const-string v5, "id"

    invoke-static {v2, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v2, v4, Lg5/n;->a:Ljava/lang/String;

    iput v3, v4, Lg5/n;->b:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lk4/n;->c()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, Lk4/n;->c()V

    throw p1
.end method

.method public final j(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lg5/q;->l:Lg5/h;

    invoke-virtual {p0}, Lk4/p;->a()Lr4/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1, p2}, Lq4/c;->p(IJ)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, p3}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lr4/i;->b()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    throw p1
.end method

.method public final k(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lg5/q;->k:Lg5/h;

    invoke-virtual {p0}, Lk4/p;->a()Lr4/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2}, Lq4/c;->h(ILjava/lang/String;)V

    const/4 p2, 0x2

    int-to-long v2, p1

    invoke-interface {v1, p2, v2, v3}, Lq4/c;->p(IJ)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lr4/i;->b()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    throw p1
.end method

.method public final l(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lg5/q;->h:Lg5/h;

    invoke-virtual {p0}, Lk4/p;->a()Lr4/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1, p2}, Lq4/c;->p(IJ)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, p3}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lr4/i;->b()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    throw p1
.end method

.method public final m(Ljava/lang/String;Lx4/h;)V
    .locals 3

    iget-object v0, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lg5/q;->g:Lg5/h;

    invoke-virtual {p0}, Lk4/p;->a()Lr4/i;

    move-result-object v1

    sget-object v2, Lx4/h;->b:Lx4/h;

    invoke-static {p2}, Lg6/c1;->E(Lx4/h;)[B

    move-result-object p2

    const/4 v2, 0x1

    invoke-interface {v1, v2, p2}, Lq4/c;->r(I[B)V

    const/4 p2, 0x2

    invoke-interface {v1, p2, p1}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lr4/i;->b()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    throw p1
.end method

.method public final n(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lg5/q;->d:Lg5/h;

    invoke-virtual {p0}, Lk4/p;->a()Lr4/i;

    move-result-object v1

    invoke-static {p1}, Lr5/h1;->G(I)I

    move-result p1

    int-to-long v2, p1

    const/4 p1, 0x1

    invoke-interface {v1, p1, v2, v3}, Lq4/c;->p(IJ)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, p2}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lr4/i;->b()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    throw p1
.end method

.method public final o(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    iget-object p0, p0, Lg5/q;->n:Lg5/h;

    invoke-virtual {p0}, Lk4/p;->a()Lr4/i;

    move-result-object v1

    const/4 v2, 0x1

    int-to-long v3, p1

    invoke-interface {v1, v2, v3, v4}, Lq4/c;->p(IJ)V

    const/4 p1, 0x2

    invoke-interface {v1, p1, p2}, Lq4/c;->h(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Lr4/i;->b()I

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p0, v1}, Lk4/p;->f(Lr4/i;)V

    throw p1
.end method
