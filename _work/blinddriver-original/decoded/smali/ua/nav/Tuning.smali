.class public final Lua/nav/Tuning;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lua/nav/Tuning$$serializer;,
        Lua/nav/Tuning$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lua/nav/Tuning$Companion;

.field public static final U:Lua/nav/Tuning;

.field public static final V:Lia/r;

.field public static final W:Ljava/util/List;


# instance fields
.field public final A:D

.field public final B:J

.field public final C:D

.field public final D:D

.field public final E:D

.field public final F:Z

.field public final G:Z

.field public final H:Z

.field public final I:D

.field public final J:I

.field public final K:Z

.field public final L:D

.field public final M:D

.field public final N:D

.field public final O:D

.field public final P:D

.field public final Q:I

.field public final R:D

.field public final S:I

.field public final T:I

.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J

.field public final d:D

.field public final e:D

.field public final f:D

.field public final g:D

.field public final h:D

.field public final i:D

.field public final j:D

.field public final k:J

.field public final l:J

.field public final m:J

.field public final n:D

.field public final o:D

.field public final p:D

.field public final q:D

.field public final r:D

.field public final s:J

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:I

.field public final x:D

.field public final y:J

.field public final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 81

    new-instance v0, Lua/nav/Tuning$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    new-instance v1, Lua/nav/Tuning;

    const/16 v79, 0xf

    const/16 v80, 0x0

    const-string v2, "default"

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x5dc

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    const-wide v9, 0x3fd3333333333333L    # 0.3

    const-wide v11, 0x3f9eb851eb851eb8L    # 0.03

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    const-wide v19, 0x3fb999999999999aL    # 0.1

    const-wide/16 v21, 0x2bc

    const-wide/16 v23, 0x1f40

    const-wide/16 v25, 0xbb8

    const-wide v27, 0x3fe3333333333333L    # 0.6

    const-wide v29, 0x4041800000000000L    # 35.0

    const-wide/high16 v31, 0x4039000000000000L    # 25.0

    const-wide/high16 v33, 0x4079000000000000L    # 400.0

    const-wide v35, 0x4072c00000000000L    # 300.0

    const-wide/16 v37, 0x1770

    const/16 v39, 0x1

    const/16 v40, 0x1

    const/16 v41, 0x1

    const/16 v42, 0x19

    const-wide/high16 v43, 0x4049000000000000L    # 50.0

    const-wide/16 v45, 0x1f40

    const-wide/high16 v47, 0x403e000000000000L    # 30.0

    const-wide/high16 v49, 0x4044000000000000L    # 40.0

    const-wide/16 v51, 0xbb8

    const-wide/high16 v53, 0x403e000000000000L    # 30.0

    const-wide/high16 v55, 0x404e000000000000L    # 60.0

    const-wide v57, 0x4062c00000000000L    # 150.0

    const/16 v59, 0x1

    const/16 v60, 0x1

    const/16 v61, 0x1

    const-wide v62, 0x4056800000000000L    # 90.0

    const/16 v64, 0x8

    const/16 v65, 0x0

    const-wide v66, 0x406f400000000000L    # 250.0

    const-wide v68, 0x409f400000000000L    # 2000.0

    const-wide v70, 0x4085e00000000000L    # 700.0

    const-wide v72, 0x4072c00000000000L    # 300.0

    const-wide/high16 v74, 0x4014000000000000L    # 5.0

    const/16 v76, 0x14

    const-wide/high16 v77, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v1 .. v80}, Lua/nav/Tuning;-><init>(Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDII)V

    sput-object v1, Lua/nav/Tuning;->U:Lua/nav/Tuning;

    new-instance v0, Lsc/j;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lsc/j;-><init>(I)V

    invoke-static {v0}, Lr5/u0;->b(Li9/c;)Lia/r;

    move-result-object v0

    sput-object v0, Lua/nav/Tuning;->V:Lia/r;

    new-instance v1, Lsc/v0;

    sget-object v4, Lsc/w0;->l:Lsc/w0;

    new-instance v13, Lsc/j;

    const/4 v0, 0x7

    invoke-direct {v13, v0}, Lsc/j;-><init>(I)V

    new-instance v14, Lsc/s0;

    invoke-direct {v14, v0}, Lsc/s0;-><init>(I)V

    const/4 v15, 0x0

    const-string v2, "stopWindowMs"

    move-object v3, v4

    const-string v4, "\u0412\u0456\u043a\u043d\u043e \u0430\u043d\u0430\u043b\u0456\u0437\u0443"

    const-string v5, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u043e\u0441\u0442\u0430\u043d\u043d\u0456\u0445 \u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434 \u0434\u0430\u0442\u0447\u0438\u043a\u0456\u0432 \u0430\u043d\u0430\u043b\u0456\u0437\u0443\u0454\u0442\u044c\u0441\u044f."

    const-string v6, "\u043c\u0441"

    const-wide v7, 0x407f400000000000L    # 500.0

    const-wide v9, 0x40a7700000000000L    # 3000.0

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    invoke-direct/range {v1 .. v15}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object v4, v3

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/j;

    const/16 v0, 0x13

    invoke-direct {v14, v0}, Lsc/j;-><init>(I)V

    new-instance v15, Lsc/s0;

    invoke-direct {v15, v0}, Lsc/s0;-><init>(I)V

    const/16 v16, 0x1

    const-string v3, "stopHoldMs"

    const-string v5, "\u0412\u0438\u0442\u0440\u0438\u043c\u043a\u0430 \u0437\u0443\u043f\u0438\u043d\u043a\u0438"

    const-string v6, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u043c\u0430\u0454 \u0442\u0440\u0438\u0432\u0430\u0442\u0438 \u00ab\u0442\u0438\u0448\u0430\u00bb, \u0449\u043e\u0431 \u043e\u0433\u043e\u043b\u043e\u0441\u0438\u0442\u0438 \u0437\u0443\u043f\u0438\u043d\u043a\u0443. \u041c\u0435\u043d\u0448\u0435: \u043b\u043e\u0432\u0438\u0442\u044c \u043a\u043e\u0440\u043e\u0442\u043a\u0456 \u0437\u0443\u043f\u0438\u043d\u043a\u0438 \u0432 \u0437\u0430\u0442\u043e\u0440\u0456, \u0431\u0456\u043b\u044c\u0448\u0435: \u0440\u0456\u0434\u0448\u0435 \u0445\u0438\u0431\u043d\u0456 \u0437\u0443\u043f\u0438\u043d\u043a\u0438."

    const-string v7, "\u043c\u0441"

    const-wide v8, 0x407f400000000000L    # 500.0

    const-wide v10, 0x40b7700000000000L    # 6000.0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object v0, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/t0;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Lsc/t0;-><init>(I)V

    new-instance v15, Lsc/u0;

    invoke-direct {v15, v3}, Lsc/u0;-><init>(I)V

    const-string v3, "stopAccMean"

    const-string v5, "\u041f\u043e\u0440\u0456\u0433 \u0437\u0443\u043f\u0438\u043d\u043a\u0438: \u0441\u0435\u0440\u0435\u0434\u043d\u0454 \u043f\u0440\u0438\u0441\u043a\u043e\u0440\u0435\u043d\u043d\u044f"

    const-string v6, "\u0422\u0438\u0445\u0438\u0439 \u0430\u043a\u0441\u0435\u043b\u0435\u0440\u043e\u043c\u0435\u0442\u0440: \u0441\u0435\u0440\u0435\u0434\u043d\u0454 |a| \u043d\u0438\u0436\u0447\u0435 \u043f\u043e\u0440\u043e\u0433\u0430."

    const-string v7, "\u043c/\u0441\u00b2"

    const-wide v8, 0x3fa999999999999aL    # 0.05

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v17, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/t0;

    const/16 v3, 0xb

    invoke-direct {v14, v3}, Lsc/t0;-><init>(I)V

    new-instance v15, Lsc/u0;

    const/4 v3, 0x6

    invoke-direct {v15, v3}, Lsc/u0;-><init>(I)V

    const/16 v16, 0x0

    const-string v3, "stopAccStd"

    const-string v5, "\u041f\u043e\u0440\u0456\u0433 \u0437\u0443\u043f\u0438\u043d\u043a\u0438: \u0440\u043e\u0437\u043a\u0438\u0434 \u043f\u0440\u0438\u0441\u043a\u043e\u0440\u0435\u043d\u043d\u044f"

    const-string v6, "\u0422\u0438\u0445\u0438\u0439 \u0430\u043a\u0441\u0435\u043b\u0435\u0440\u043e\u043c\u0435\u0442\u0440: \u0440\u043e\u0437\u043a\u0438\u0434 |a| \u043d\u0438\u0436\u0447\u0435 \u043f\u043e\u0440\u043e\u0433\u0430."

    const-string v7, "\u043c/\u0441\u00b2"

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v18, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/t0;

    const/16 v3, 0xc

    invoke-direct {v14, v3}, Lsc/t0;-><init>(I)V

    new-instance v15, Lsc/s0;

    const/4 v3, 0x5

    invoke-direct {v15, v3}, Lsc/s0;-><init>(I)V

    const-string v3, "stopGyro"

    const-string v5, "\u041f\u043e\u0440\u0456\u0433 \u0437\u0443\u043f\u0438\u043d\u043a\u0438: \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f"

    const-string v6, "\u0422\u0438\u0445\u0438\u0439 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f: \u0441\u0435\u0440\u0435\u0434\u043d\u044f \u043a\u0443\u0442\u043e\u0432\u0430 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u043d\u0438\u0436\u0447\u0435 \u043f\u043e\u0440\u043e\u0433\u0430."

    const-string v7, "\u0440\u0430\u0434/\u0441"

    const-wide v8, 0x3f747ae147ae147bL    # 0.005

    const-wide v10, 0x3fc999999999999aL    # 0.2

    const-wide v12, 0x3f747ae147ae147bL    # 0.005

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v19, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/j;

    const/16 v3, 0x10

    invoke-direct {v14, v3}, Lsc/j;-><init>(I)V

    new-instance v15, Lsc/s0;

    invoke-direct {v15, v3}, Lsc/s0;-><init>(I)V

    const-string v3, "stopGyroAccMeanMax"

    const-string v5, "\u0413\u0456\u0440\u043e\u0441\u043a\u043e\u043f: \u043c\u0435\u0436\u0430 \u043f\u0440\u0438\u0441\u043a\u043e\u0440\u0435\u043d\u043d\u044f"

    const-string v6, "\u0413\u0456\u0440\u043e\u0441\u043a\u043e\u043f \u0432\u0440\u0430\u0445\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f, \u043b\u0438\u0448\u0435 \u044f\u043a\u0449\u043e \u0441\u0435\u0440\u0435\u0434\u043d\u0454 |a| \u043d\u0435 \u0432\u0438\u0449\u0435 \u0446\u044c\u043e\u0433\u043e \u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f."

    const-string v7, "\u043c/\u0441\u00b2"

    const-wide v8, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    const-wide v12, 0x3fa999999999999aL    # 0.05

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v20, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/j;

    const/16 v3, 0x1b

    invoke-direct {v14, v3}, Lsc/j;-><init>(I)V

    new-instance v15, Lsc/s0;

    invoke-direct {v15, v3}, Lsc/s0;-><init>(I)V

    const-string v3, "resumeAccMean"

    const-string v5, "\u0420\u0443\u0445: \u0441\u0435\u0440\u0435\u0434\u043d\u0454 \u043f\u0440\u0438\u0441\u043a\u043e\u0440\u0435\u043d\u043d\u044f"

    const-string v6, "\u0412\u0438\u0449\u0435 \u0446\u044c\u043e\u0433\u043e \u0437\u043d\u0430\u0447\u0435\u043d\u043d\u044f (\u0430\u0431\u043e \u0440\u043e\u0437\u043a\u0438\u0434\u0443 \u0447\u0438 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u0430) \u0432\u0432\u0430\u0436\u0430\u0454\u043c\u043e, \u0449\u043e \u043f\u043e\u0457\u0445\u0430\u043b\u0438."

    const-string v7, "\u043c/\u0441\u00b2"

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v21, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/t0;

    const/16 v3, 0x8

    invoke-direct {v14, v3}, Lsc/t0;-><init>(I)V

    new-instance v15, Lsc/u0;

    const/4 v3, 0x7

    invoke-direct {v15, v3}, Lsc/u0;-><init>(I)V

    const-string v3, "resumeAccStd"

    const-string v5, "\u0420\u0443\u0445: \u0440\u043e\u0437\u043a\u0438\u0434 \u043f\u0440\u0438\u0441\u043a\u043e\u0440\u0435\u043d\u043d\u044f"

    const-string v6, ""

    const-string v7, "\u043c/\u0441\u00b2"

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v22, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/t0;

    const/16 v3, 0xd

    invoke-direct {v14, v3}, Lsc/t0;-><init>(I)V

    new-instance v15, Lsc/u0;

    const/16 v3, 0x8

    invoke-direct {v15, v3}, Lsc/u0;-><init>(I)V

    const-string v3, "resumeGyro"

    const-string v5, "\u0420\u0443\u0445: \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f"

    const-string v6, ""

    const-string v7, "\u0440\u0430\u0434/\u0441"

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v23, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/j;

    const/4 v3, 0x6

    invoke-direct {v14, v3}, Lsc/j;-><init>(I)V

    new-instance v15, Lsc/s0;

    const/4 v3, 0x1

    invoke-direct {v15, v3}, Lsc/s0;-><init>(I)V

    const-string v3, "resumeConfirmMs"

    const-string v5, "\u041f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u0436\u0435\u043d\u043d\u044f \u0440\u0443\u0445\u0443"

    const-string v6, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u043c\u0430\u0454 \u0442\u0440\u0438\u043c\u0430\u0442\u0438\u0441\u044f \u00ab\u0448\u0443\u043c\u00bb, \u0449\u043e\u0431 \u043e\u0433\u043e\u043b\u043e\u0441\u0438\u0442\u0438, \u0449\u043e \u043f\u043e\u0457\u0445\u0430\u043b\u0438."

    const-string v7, "\u043c\u0441"

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    const-wide v10, 0x40a7700000000000L    # 3000.0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v24, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/j;

    const/16 v3, 0x8

    invoke-direct {v14, v3}, Lsc/j;-><init>(I)V

    new-instance v15, Lsc/s0;

    const/4 v3, 0x2

    invoke-direct {v15, v3}, Lsc/s0;-><init>(I)V

    const-string v3, "resumeRampMs"

    const-string v5, "\u0420\u043e\u0437\u0433\u0456\u043d \u043f\u0456\u0441\u043b\u044f \u0437\u0443\u043f\u0438\u043d\u043a\u0438"

    const-string v6, "\u0417\u0430 \u044f\u043a\u0438\u0439 \u0447\u0430\u0441 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c \u043c\u0430\u0440\u043a\u0435\u0440\u0430 \u043f\u043e\u0432\u0435\u0440\u0442\u0430\u0454\u0442\u044c\u0441\u044f \u0434\u043e \u0437\u0432\u0438\u0447\u0430\u0439\u043d\u043e\u0457."

    const-string v7, "\u043c\u0441"

    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide v10, 0x40d3880000000000L    # 20000.0

    const-wide v12, 0x407f400000000000L    # 500.0

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v25, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/j;

    const/16 v3, 0x9

    invoke-direct {v14, v3}, Lsc/j;-><init>(I)V

    new-instance v15, Lsc/s0;

    const/4 v3, 0x3

    invoke-direct {v15, v3}, Lsc/s0;-><init>(I)V

    const-string v3, "resumeSlowMs"

    const-string v5, "\u041f\u043e\u0432\u0456\u043b\u044c\u043d\u0438\u0439 \u043f\u043e\u0447\u0430\u0442\u043e\u043a \u0440\u043e\u0437\u0433\u043e\u043d\u0443"

    const-string v6, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u043f\u0435\u0440\u0448\u0438\u0445 \u043c\u0456\u043b\u0456\u0441\u0435\u043a\u0443\u043d\u0434 \u0440\u043e\u0437\u0433\u0456\u043d \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u0438\u0439."

    const-string v7, "\u043c\u0441"

    const-wide/16 v8, 0x0

    const-wide v10, 0x40c3880000000000L    # 10000.0

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v26, v2

    new-instance v2, Lsc/v0;

    new-instance v14, Lsc/j;

    const/16 v3, 0xa

    invoke-direct {v14, v3}, Lsc/j;-><init>(I)V

    new-instance v15, Lsc/s0;

    const/4 v3, 0x4

    invoke-direct {v15, v3}, Lsc/s0;-><init>(I)V

    const-string v3, "resumeSlowCap"

    const-string v5, "\u041e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f \u043d\u0430 \u043f\u043e\u0447\u0430\u0442\u043a\u0443 \u0440\u043e\u0437\u0433\u043e\u043d\u0443"

    const-string v6, "\u0427\u0430\u0441\u0442\u043a\u0430 \u0437\u0432\u0438\u0447\u0430\u0439\u043d\u043e\u0457 \u0448\u0432\u0438\u0434\u043a\u043e\u0441\u0442\u0456 \u0432 \u043f\u0435\u0440\u0448\u0456 \u0441\u0435\u043a\u0443\u043d\u0434\u0438."

    const-string v7, "\u00d7"

    const-wide v8, 0x3fc3333333333333L    # 0.15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3fa999999999999aL    # 0.05

    invoke-direct/range {v2 .. v16}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    new-instance v27, Lsc/v0;

    sget-object v30, Lsc/w0;->m:Lsc/w0;

    new-instance v3, Lsc/j;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lsc/j;-><init>(I)V

    new-instance v4, Lsc/s0;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lsc/s0;-><init>(I)V

    const/16 v41, 0x0

    const-string v28, "turnMinDeg"

    move-object/from16 v29, v30

    const-string v30, "\u041c\u0456\u043d\u0456\u043c\u0430\u043b\u044c\u043d\u0438\u0439 \u043f\u043e\u0432\u043e\u0440\u043e\u0442"

    const-string v31, "\u041c\u0435\u043d\u0448\u0456 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0438 \u0437\u0430 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u043e\u043c \u043d\u0435 \u0432\u0438\u043a\u043e\u0440\u0438\u0441\u0442\u043e\u0432\u0443\u044e\u0442\u044c\u0441\u044f \u0434\u043b\u044f \u043f\u0440\u0438\u0432\'\u044f\u0437\u043a\u0438 \u043c\u0430\u0440\u043a\u0435\u0440\u0430."

    const-string v32, "\u00b0"

    const-wide/high16 v33, 0x402e000000000000L    # 15.0

    const-wide v35, 0x4056800000000000L    # 90.0

    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    move-object/from16 v39, v3

    move-object/from16 v40, v4

    invoke-direct/range {v27 .. v41}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v30, v29

    new-instance v28, Lsc/v0;

    new-instance v3, Lsc/j;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lsc/j;-><init>(I)V

    new-instance v4, Lsc/s0;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lsc/s0;-><init>(I)V

    const/16 v42, 0x0

    const-string v29, "turnTolDeg"

    const-string v31, "\u0414\u043e\u043f\u0443\u0441\u043a \u043a\u0443\u0442\u0430 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443"

    const-string v32, "\u041d\u0430\u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u0437\u0430 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u043e\u043c \u043c\u043e\u0436\u0435 \u0432\u0456\u0434\u0440\u0456\u0437\u043d\u044f\u0442\u0438\u0441\u044f \u0432\u0456\u0434 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u043d\u0430 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0456."

    const-string v33, "\u00b0"

    const-wide/high16 v34, 0x4024000000000000L    # 10.0

    const-wide/high16 v36, 0x404e000000000000L    # 60.0

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    invoke-direct/range {v28 .. v42}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v15, v28

    new-instance v16, Lsc/v0;

    new-instance v3, Lsc/j;

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Lsc/j;-><init>(I)V

    new-instance v4, Lsc/s0;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, Lsc/s0;-><init>(I)V

    const-string v29, "turnBehindM"

    const-string v31, "\u041f\u043e\u0448\u0443\u043a \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u043f\u043e\u0437\u0430\u0434\u0443"

    const-string v32, ""

    const-string v33, "\u043c"

    const-wide/high16 v34, 0x4059000000000000L    # 100.0

    const-wide/high16 v36, 0x4089000000000000L    # 800.0

    const-wide/high16 v38, 0x4049000000000000L    # 50.0

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    move-object/from16 v28, v16

    invoke-direct/range {v28 .. v42}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    new-instance v28, Lsc/v0;

    new-instance v3, Lsc/j;

    const/16 v4, 0xe

    invoke-direct {v3, v4}, Lsc/j;-><init>(I)V

    new-instance v4, Lsc/s0;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Lsc/s0;-><init>(I)V

    const-string v29, "turnAheadM"

    const-string v31, "\u041f\u043e\u0448\u0443\u043a \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0443"

    const-string v32, ""

    const-string v33, "\u043c"

    const-wide v36, 0x4082c00000000000L    # 600.0

    move-object/from16 v40, v3

    move-object/from16 v41, v4

    invoke-direct/range {v28 .. v42}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v3, v17

    move-object/from16 v17, v28

    new-instance v28, Lsc/v0;

    new-instance v4, Lsc/j;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Lsc/j;-><init>(I)V

    new-instance v5, Lsc/s0;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, Lsc/s0;-><init>(I)V

    const-string v29, "turnWindowMs"

    const-string v31, "\u0412\u0456\u043a\u043d\u043e \u043d\u0430\u043a\u043e\u043f\u0438\u0447\u0435\u043d\u043d\u044f \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443"

    const-string v32, ""

    const-string v33, "\u043c\u0441"

    const-wide v34, 0x409f400000000000L    # 2000.0

    const-wide v36, 0x40cd4c0000000000L    # 15000.0

    const-wide v38, 0x407f400000000000L    # 500.0

    move-object/from16 v40, v4

    move-object/from16 v41, v5

    invoke-direct/range {v28 .. v42}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v4, v18

    move-object/from16 v18, v28

    new-instance v28, Lsc/v0;

    new-instance v5, Lsc/j;

    const/16 v6, 0x11

    invoke-direct {v5, v6}, Lsc/j;-><init>(I)V

    new-instance v6, Lsc/s0;

    const/16 v7, 0xc

    invoke-direct {v6, v7}, Lsc/s0;-><init>(I)V

    const/16 v42, 0x1

    const-string v29, "turnHoldMaxS"

    const-string v31, "\u0423\u0442\u0440\u0438\u043c\u0430\u043d\u043d\u044f \u043f\u0435\u0440\u0435\u0434 \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u043e\u043c"

    const-string v32, "\u0411\u0435\u0437 GPS: \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u0441\u0435\u043a\u0443\u043d\u0434 \u0447\u0435\u043a\u0430\u0442\u0438 \u043f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u0436\u0435\u043d\u043d\u044f \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443 \u0433\u0456\u0440\u043e\u0441\u043a\u043e\u043f\u043e\u043c, \u043f\u0435\u0440\u0448 \u043d\u0456\u0436 \u0432\u0456\u0434\u043f\u0443\u0441\u0442\u0438\u0442\u0438 \u043c\u0430\u0440\u043a\u0435\u0440 \u0456 \u0457\u0445\u0430\u0442\u0438 \u0434\u0430\u043b\u0456 \u044f\u043a \u0440\u0430\u043d\u0456\u0448\u0435."

    const-string v33, "\u0441"

    const-wide/high16 v34, 0x4014000000000000L    # 5.0

    const-wide/high16 v36, 0x404e000000000000L    # 60.0

    const-wide/high16 v38, 0x4014000000000000L    # 5.0

    move-object/from16 v40, v5

    move-object/from16 v41, v6

    invoke-direct/range {v28 .. v42}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    new-instance v29, Lsc/v0;

    sget-object v32, Lsc/w0;->n:Lsc/w0;

    new-instance v5, Lsc/j;

    const/16 v6, 0x12

    invoke-direct {v5, v6}, Lsc/j;-><init>(I)V

    new-instance v6, Lsc/s0;

    const/16 v7, 0xd

    invoke-direct {v6, v7}, Lsc/s0;-><init>(I)V

    const/16 v43, 0x1

    const-string v30, "offRouteM"

    move-object/from16 v31, v32

    const-string v32, "\u0421\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c"

    const-string v33, "\u041d\u0430 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u043c\u0435\u0442\u0440\u0456\u0432 \u0432\u0456\u0434 \u043b\u0456\u043d\u0456\u0457 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0432\u0432\u0430\u0436\u0430\u0454\u043c\u043e, \u0449\u043e \u0432\u0438 \u0437 \u043d\u044c\u043e\u0433\u043e \u0437\u0456\u0439\u0448\u043b\u0438."

    const-string v34, "\u043c"

    const-wide/high16 v35, 0x4034000000000000L    # 20.0

    const-wide v37, 0x4062c00000000000L    # 150.0

    const-wide/high16 v39, 0x4014000000000000L    # 5.0

    move-object/from16 v41, v5

    move-object/from16 v42, v6

    invoke-direct/range {v29 .. v43}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v32, v31

    new-instance v30, Lsc/v0;

    new-instance v5, Lsc/j;

    const/16 v6, 0x14

    invoke-direct {v5, v6}, Lsc/j;-><init>(I)V

    new-instance v6, Lsc/s0;

    const/16 v7, 0xe

    invoke-direct {v6, v7}, Lsc/s0;-><init>(I)V

    const/16 v44, 0x0

    const-string v31, "offRouteHoldMs"

    const-string v33, "\u0421\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: \u0432\u0438\u0442\u0440\u0438\u043c\u043a\u0430"

    const-string v34, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u0447\u0430\u0441\u0443 \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c \u043c\u0430\u0454 \u0431\u0443\u0442\u0438 \u0431\u0456\u043b\u044c\u0448\u043e\u044e \u0437\u0430 \u043f\u043e\u0440\u043e\u0433\u043e\u0432\u0443."

    const-string v35, "\u043c\u0441"

    const-wide v36, 0x409f400000000000L    # 2000.0

    const-wide v38, 0x40dd4c0000000000L    # 30000.0

    const-wide v40, 0x408f400000000000L    # 1000.0

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    invoke-direct/range {v30 .. v44}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v7, v21

    move-object/from16 v21, v30

    new-instance v30, Lsc/v0;

    new-instance v5, Lsc/j;

    const/16 v6, 0x15

    invoke-direct {v5, v6}, Lsc/j;-><init>(I)V

    new-instance v6, Lsc/s0;

    const/16 v8, 0xf

    invoke-direct {v6, v8}, Lsc/s0;-><init>(I)V

    const-string v31, "offRouteFastM"

    const-string v33, "\u0428\u0432\u0438\u0434\u043a\u0438\u0439 \u0441\u0445\u0456\u0434: \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c"

    const-string v34, "\u0417 GPS: \u0441\u0445\u0456\u0434 \u0437\u0430\u0440\u0430\u0445\u043e\u0432\u0443\u0454\u0442\u044c\u0441\u044f \u0448\u0432\u0438\u0434\u0448\u0435, \u044f\u043a\u0449\u043e \u0432\u0438 \u0434\u0430\u043b\u0456 \u0432\u0456\u0434 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043d\u0430 \u0441\u0442\u0456\u043b\u044c\u043a\u0438 \u043c\u0435\u0442\u0440\u0456\u0432 \u0456 \u0457\u0434\u0435\u0442\u0435 \u043d\u0435 \u0442\u0443\u0434\u0438, \u043a\u0443\u0434\u0438 \u0432\u0435\u0434\u0435 \u043c\u0430\u0440\u0448\u0440\u0443\u0442."

    const-string v35, "\u043c"

    const-wide/high16 v36, 0x402e000000000000L    # 15.0

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    const-wide/high16 v40, 0x4014000000000000L    # 5.0

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    invoke-direct/range {v30 .. v44}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v8, v22

    move-object/from16 v22, v30

    new-instance v30, Lsc/v0;

    new-instance v5, Lsc/j;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Lsc/j;-><init>(I)V

    new-instance v6, Lsc/s0;

    const/16 v9, 0x11

    invoke-direct {v6, v9}, Lsc/s0;-><init>(I)V

    const-string v31, "offRouteFastDeg"

    const-string v33, "\u0428\u0432\u0438\u0434\u043a\u0438\u0439 \u0441\u0445\u0456\u0434: \u0440\u043e\u0437\u0431\u0456\u0436\u043d\u0456\u0441\u0442\u044c \u043a\u0443\u0440\u0441\u0443"

    const-string v34, "\u041d\u0430 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u0433\u0440\u0430\u0434\u0443\u0441\u0456\u0432 \u0432\u0430\u0448 \u043a\u0443\u0440\u0441 \u043c\u0430\u0454 \u0432\u0456\u0434\u0440\u0456\u0437\u043d\u044f\u0442\u0438\u0441\u044f \u0432\u0456\u0434 \u043d\u0430\u043f\u0440\u044f\u043c\u043a\u0443 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0443."

    const-string v35, "\u00b0"

    const-wide/high16 v36, 0x4034000000000000L    # 20.0

    const-wide v38, 0x4056800000000000L    # 90.0

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    invoke-direct/range {v30 .. v44}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v9, v23

    move-object/from16 v23, v30

    new-instance v30, Lsc/v0;

    new-instance v5, Lsc/j;

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Lsc/j;-><init>(I)V

    new-instance v6, Lsc/s0;

    const/16 v10, 0x12

    invoke-direct {v6, v10}, Lsc/s0;-><init>(I)V

    const-string v31, "offRouteFastHoldMs"

    const-string v33, "\u0428\u0432\u0438\u0434\u043a\u0438\u0439 \u0441\u0445\u0456\u0434: \u0432\u0438\u0442\u0440\u0438\u043c\u043a\u0430"

    const-string v34, ""

    const-string v35, "\u043c\u0441"

    const-wide v36, 0x408f400000000000L    # 1000.0

    const-wide v38, 0x40c3880000000000L    # 10000.0

    const-wide v40, 0x407f400000000000L    # 500.0

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    invoke-direct/range {v30 .. v44}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v10, v24

    move-object/from16 v24, v30

    new-instance v30, Lsc/v0;

    new-instance v5, Lsc/j;

    const/16 v6, 0x18

    invoke-direct {v5, v6}, Lsc/j;-><init>(I)V

    new-instance v6, Lsc/s0;

    const/16 v11, 0x14

    invoke-direct {v6, v11}, Lsc/s0;-><init>(I)V

    const-string v31, "suspectNearM"

    const-string v33, "\u0421\u0443\u043c\u043d\u0456\u0432\u043d\u0438\u0439 GPS: \u0434\u043e\u043f\u0443\u0441\u043a \u0434\u043e \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    const-string v34, "\u0421\u0443\u043c\u043d\u0456\u0432\u043d\u0430 \u043f\u043e\u0437\u0438\u0446\u0456\u044f GPS (\u0441\u043b\u0430\u0431\u043a\u0435 \u0433\u043b\u0443\u0448\u0456\u043d\u043d\u044f, \u043c\u0430\u043b\u043e \u0441\u0443\u043f\u0443\u0442\u043d\u0438\u043a\u0456\u0432) \u0431\u043b\u0438\u0436\u0447\u0430 \u0437\u0430 \u0446\u0435 \u0440\u0443\u0445\u0430\u0454 \u043c\u0430\u0440\u043a\u0435\u0440; \u0434\u0430\u043b\u0456 \u2014 \u043e\u0437\u043d\u0430\u043a\u0430 \u0441\u0445\u043e\u0434\u0443 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443. \u041d\u0435 \u043c\u0435\u043d\u0448\u0435 \u0437\u0430 \u00ab\u0421\u0445\u0456\u0434 \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c\u00bb."

    const-string v35, "\u043c"

    const-wide/high16 v36, 0x403e000000000000L    # 30.0

    const-wide v38, 0x4062c00000000000L    # 150.0

    const-wide/high16 v40, 0x4014000000000000L    # 5.0

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    invoke-direct/range {v30 .. v44}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v11, v25

    move-object/from16 v25, v30

    new-instance v30, Lsc/v0;

    new-instance v5, Lsc/j;

    const/16 v6, 0x19

    invoke-direct {v5, v6}, Lsc/j;-><init>(I)V

    new-instance v6, Lsc/s0;

    const/16 v12, 0x15

    invoke-direct {v6, v12}, Lsc/s0;-><init>(I)V

    const-string v31, "gateMaxSpeedKmh"

    const-string v33, "\u041d\u0430\u0439\u0431\u0456\u043b\u044c\u0448\u0430 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c GPS"

    const-string v34, "\u041f\u043e\u0437\u0438\u0446\u0456\u044f GPS \u0437\u0456 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044e \u0432\u0438\u0449\u0435 \u0430\u0431\u043e \u0441\u0442\u0440\u0438\u0431\u043a\u043e\u043c, \u044f\u043a\u043e\u0433\u043e \u043d\u0435 \u043f\u0440\u043e\u0457\u0445\u0430\u0442\u0438 \u0437 \u0442\u0430\u043a\u043e\u044e \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044e, \u0432\u0456\u0434\u043a\u0438\u0434\u0430\u0454\u0442\u044c\u0441\u044f \u044f\u043a \u0445\u0438\u0431\u043d\u0430."

    const-string v35, "\u043a\u043c/\u0433\u043e\u0434"

    const-wide/high16 v36, 0x405e000000000000L    # 120.0

    const-wide v38, 0x406f400000000000L    # 250.0

    const-wide/high16 v40, 0x4024000000000000L    # 10.0

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    invoke-direct/range {v30 .. v44}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v12, v26

    move-object/from16 v26, v30

    new-instance v30, Lsc/v0;

    new-instance v5, Lsc/j;

    const/16 v6, 0x1a

    invoke-direct {v5, v6}, Lsc/j;-><init>(I)V

    new-instance v6, Lsc/s0;

    const/16 v13, 0x16

    invoke-direct {v6, v13}, Lsc/s0;-><init>(I)V

    const/16 v44, 0x1

    const-string v31, "arriveM"

    const-string v33, "\u00ab\u0412\u0438 \u043f\u0440\u0438\u0431\u0443\u043b\u0438\u00bb: \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u044c \u0434\u043e \u043a\u0456\u043d\u0446\u044f"

    const-string v34, ""

    const-string v35, "\u043c"

    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    const-wide/high16 v40, 0x4014000000000000L    # 5.0

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    invoke-direct/range {v30 .. v44}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v14, v27

    move-object/from16 v27, v30

    new-instance v30, Lsc/v0;

    new-instance v5, Lsc/j;

    const/16 v6, 0x1c

    invoke-direct {v5, v6}, Lsc/j;-><init>(I)V

    new-instance v6, Lsc/s0;

    const/16 v13, 0x17

    invoke-direct {v6, v13}, Lsc/s0;-><init>(I)V

    const-string v31, "blindDeviationMinDeg"

    const-string v33, "\u0420\u043e\u0437\u0432\u043e\u0440\u043e\u0442 \u0431\u0435\u0437 GPS: \u043c\u0456\u043d\u0456\u043c\u0430\u043b\u044c\u043d\u0438\u0439 \u043a\u0443\u0442"

    const-string v34, "\u0413\u0456\u0440\u043e\u0441\u043a\u043e\u043f \u043f\u043e\u0431\u0430\u0447\u0438\u0432 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u043d\u0430 \u0442\u0430\u043a\u0438\u0439 \u043a\u0443\u0442, \u0449\u043e \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f \u0437 \u043c\u0430\u043d\u0435\u0432\u0440\u043e\u043c \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443: \u043f\u0440\u043e\u043f\u043e\u043d\u0443\u0454\u043c\u043e \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0443."

    const-string v35, "\u00b0"

    const-wide/high16 v36, 0x404e000000000000L    # 60.0

    const-wide v38, 0x4065400000000000L    # 170.0

    move-object/from16 v42, v5

    move-object/from16 v43, v6

    invoke-direct/range {v30 .. v44}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v5, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v30

    new-instance v30, Lsc/v0;

    new-instance v6, Lsc/j;

    const/16 v13, 0x1d

    invoke-direct {v6, v13}, Lsc/j;-><init>(I)V

    new-instance v13, Lsc/s0;

    move-object/from16 v45, v0

    const/16 v0, 0x18

    invoke-direct {v13, v0}, Lsc/s0;-><init>(I)V

    const-string v31, "missedTurnM"

    const-string v33, "\u041f\u0440\u043e\u0457\u0445\u0430\u043b\u0438 \u043f\u043e\u0432\u043e\u0440\u043e\u0442 \u0431\u0435\u0437 GPS"

    const-string v34, "\u041c\u0430\u0440\u043a\u0435\u0440 \u0447\u0435\u043a\u0430\u0454 \u0431\u0456\u043b\u044f \u043f\u043e\u0432\u043e\u0440\u043e\u0442\u0443, \u0430 \u043c\u0430\u0448\u0438\u043d\u0430 \u0437\u0430 \u0434\u0430\u0442\u0447\u0438\u043a\u0430\u043c\u0438 \u043f\u0440\u043e\u0457\u0445\u0430\u043b\u0430 \u0441\u0442\u0456\u043b\u044c\u043a\u0438 \u043c\u0435\u0442\u0440\u0456\u0432, \u043d\u0435 \u043f\u043e\u0432\u0435\u0440\u043d\u0443\u0432\u0448\u0438 \u043a\u0435\u0440\u043c\u043e: \u043f\u0440\u043e\u043f\u043e\u043d\u0443\u0454\u043c\u043e \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u043e\u0432\u0443."

    const-string v35, "\u043c"

    const-wide/high16 v36, 0x4049000000000000L    # 50.0

    const-wide v38, 0x407f400000000000L    # 500.0

    const-wide/high16 v40, 0x4024000000000000L    # 10.0

    move-object/from16 v42, v6

    move-object/from16 v43, v13

    invoke-direct/range {v30 .. v44}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v6, v20

    move-object/from16 v20, v29

    move-object/from16 v29, v30

    new-instance v30, Lsc/v0;

    new-instance v0, Lsc/t0;

    const/4 v13, 0x0

    invoke-direct {v0, v13}, Lsc/t0;-><init>(I)V

    new-instance v13, Lsc/s0;

    move-object/from16 v42, v0

    const/16 v0, 0x19

    invoke-direct {v13, v0}, Lsc/s0;-><init>(I)V

    const-string v31, "blindDeviationDelayS"

    const-string v33, "\u0420\u043e\u0437\u0432\u043e\u0440\u043e\u0442 \u0431\u0435\u0437 GPS: \u0447\u0430\u0441 \u043d\u0430 \u0432\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c"

    const-string v34, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u0441\u0435\u043a\u0443\u043d\u0434 \u0447\u0435\u043a\u0430\u0442\u0438 \u0432\u0430\u0448\u043e\u0457 \u0432\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u0456, \u043f\u0435\u0440\u0448 \u043d\u0456\u0436 \u043f\u0435\u0440\u0435\u0431\u0443\u0434\u0443\u0432\u0430\u0442\u0438 \u0441\u0430\u043c\u043e\u0441\u0442\u0456\u0439\u043d\u043e."

    const-string v35, "\u0441"

    const-wide/high16 v36, 0x4008000000000000L    # 3.0

    const-wide/high16 v38, 0x4034000000000000L    # 20.0

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    move-object/from16 v43, v13

    invoke-direct/range {v30 .. v44}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    new-instance v46, Lsc/v0;

    sget-object v49, Lsc/w0;->o:Lsc/w0;

    new-instance v0, Lsc/t0;

    const/4 v13, 0x2

    invoke-direct {v0, v13}, Lsc/t0;-><init>(I)V

    new-instance v13, Lsc/s0;

    move-object/from16 v58, v0

    const/16 v0, 0x1a

    invoke-direct {v13, v0}, Lsc/s0;-><init>(I)V

    const-string v47, "cameraShowM"

    move-object/from16 v48, v49

    const-string v49, "\u041a\u0430\u043c\u0435\u0440\u0430: \u043f\u043e\u043a\u0430\u0437 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456"

    const-string v50, "\u0417 \u044f\u043a\u043e\u0457 \u0432\u0456\u0434\u0441\u0442\u0430\u043d\u0456 \u043f\u043e\u043a\u0430\u0437\u0443\u0454\u0442\u044c\u0441\u044f \u043f\u043b\u0430\u0448\u043a\u0430 \u043a\u0430\u043c\u0435\u0440\u0438."

    const-string v51, "\u043c"

    const-wide v52, 0x407f400000000000L    # 500.0

    const-wide v54, 0x40af400000000000L    # 4000.0

    const-wide/high16 v56, 0x4059000000000000L    # 100.0

    move-object/from16 v59, v13

    invoke-direct/range {v46 .. v60}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object/from16 v49, v48

    new-instance v32, Lsc/v0;

    new-instance v0, Lsc/t0;

    const/4 v13, 0x3

    invoke-direct {v0, v13}, Lsc/t0;-><init>(I)V

    new-instance v13, Lsc/s0;

    move-object/from16 v59, v0

    const/16 v0, 0x1c

    invoke-direct {v13, v0}, Lsc/s0;-><init>(I)V

    const-string v48, "cameraWarnM"

    const-string v50, "\u041a\u0430\u043c\u0435\u0440\u0430: \u0433\u043e\u043b\u043e\u0441\u043e\u0432\u0435 \u043f\u043e\u043f\u0435\u0440\u0435\u0434\u0436\u0435\u043d\u043d\u044f"

    const-string v51, ""

    const-string v52, "\u043c"

    const-wide/high16 v53, 0x4069000000000000L    # 200.0

    const-wide v55, 0x4097700000000000L    # 1500.0

    const-wide/high16 v57, 0x4049000000000000L    # 50.0

    move-object/from16 v60, v13

    move-object/from16 v47, v32

    invoke-direct/range {v47 .. v61}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    new-instance v33, Lsc/v0;

    new-instance v0, Lsc/t0;

    const/4 v13, 0x4

    invoke-direct {v0, v13}, Lsc/t0;-><init>(I)V

    new-instance v13, Lsc/s0;

    move-object/from16 v59, v0

    const/16 v0, 0x1d

    invoke-direct {v13, v0}, Lsc/s0;-><init>(I)V

    const-string v48, "cameraBeepM"

    const-string v50, "\u041a\u0430\u043c\u0435\u0440\u0430: \u0441\u0438\u0433\u043d\u0430\u043b \u043f\u0440\u0438 \u043f\u0435\u0440\u0435\u0432\u0438\u0449\u0435\u043d\u043d\u0456"

    const-string v51, ""

    const-string v52, "\u043c"

    const-wide/high16 v53, 0x4059000000000000L    # 100.0

    const-wide/high16 v55, 0x4089000000000000L    # 800.0

    move-object/from16 v60, v13

    move-object/from16 v47, v33

    invoke-direct/range {v47 .. v61}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    new-instance v34, Lsc/v0;

    new-instance v0, Lsc/t0;

    const/4 v13, 0x5

    invoke-direct {v0, v13}, Lsc/t0;-><init>(I)V

    new-instance v13, Lsc/u0;

    move-object/from16 v59, v0

    const/4 v0, 0x0

    invoke-direct {v13, v0}, Lsc/u0;-><init>(I)V

    const-string v48, "cameraSpeedTolKmh"

    const-string v50, "\u041a\u0430\u043c\u0435\u0440\u0430: \u0434\u043e\u043f\u0443\u0441\u043a \u043f\u0435\u0440\u0435\u0432\u0438\u0449\u0435\u043d\u043d\u044f"

    const-string v51, "\u041d\u0430 \u0441\u043a\u0456\u043b\u044c\u043a\u0438 \u043a\u043c/\u0433\u043e\u0434 \u043c\u043e\u0436\u043d\u0430 \u043f\u0435\u0440\u0435\u0432\u0438\u0449\u0438\u0442\u0438 \u043b\u0456\u043c\u0456\u0442 \u043a\u0430\u043c\u0435\u0440\u0438 \u0431\u0435\u0437 \u0441\u0438\u0433\u043d\u0430\u043b\u0443."

    const-string v52, "\u043a\u043c/\u0433\u043e\u0434"

    const-wide/16 v53, 0x0

    const-wide/high16 v55, 0x4034000000000000L    # 20.0

    const-wide/high16 v57, 0x3ff0000000000000L    # 1.0

    move-object/from16 v60, v13

    move-object/from16 v47, v34

    invoke-direct/range {v47 .. v61}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    new-instance v35, Lsc/v0;

    sget-object v49, Lsc/w0;->p:Lsc/w0;

    new-instance v0, Lsc/t0;

    const/4 v13, 0x6

    invoke-direct {v0, v13}, Lsc/t0;-><init>(I)V

    new-instance v13, Lsc/u0;

    move-object/from16 v59, v0

    const/4 v0, 0x2

    invoke-direct {v13, v0}, Lsc/u0;-><init>(I)V

    const-string v48, "trailSeconds"

    const-string v50, "\u041a\u0440\u0430\u043f\u043a\u0438 GPS \u0456 \u043c\u0435\u0440\u0435\u0436\u0456 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456"

    const-string v51, "\u0421\u043a\u0456\u043b\u044c\u043a\u0438 \u0441\u0435\u043a\u0443\u043d\u0434 \u043b\u0438\u0448\u0430\u044e\u0442\u044c\u0441\u044f \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u043a\u0440\u0430\u043f\u043a\u0438 \u043e\u0441\u0442\u0430\u043d\u043d\u0456\u0445 \u043f\u043e\u0437\u0438\u0446\u0456\u0439: GPS (\u0437\u0435\u043b\u0435\u043d\u0430: \u0434\u043e\u0432\u0456\u0440\u0435\u043d\u0430, \u043f\u043e\u043c\u0430\u0440\u0430\u043d\u0447\u0435\u0432\u0430: \u0441\u0443\u043c\u043d\u0456\u0432\u043d\u0430, \u0447\u0435\u0440\u0432\u043e\u043d\u0430: \u0432\u0456\u0434\u0445\u0438\u043b\u0435\u043d\u0430) \u0456 \u043c\u0435\u0440\u0435\u0436\u0456 (\u0441\u0438\u043d\u044f). \u041f\u043e\u0441\u0442\u0443\u043f\u043e\u0432\u043e \u0437\u0433\u0430\u0441\u0430\u044e\u0442\u044c. 0: \u043d\u0435 \u043f\u043e\u043a\u0430\u0437\u0443\u0432\u0430\u0442\u0438."

    const-string v52, "\u0441"

    const-wide v55, 0x4072c00000000000L    # 300.0

    const-wide/high16 v57, 0x4014000000000000L    # 5.0

    move-object/from16 v60, v13

    move-object/from16 v47, v35

    invoke-direct/range {v47 .. v61}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    new-instance v36, Lsc/v0;

    new-instance v0, Lsc/t0;

    const/4 v13, 0x7

    invoke-direct {v0, v13}, Lsc/t0;-><init>(I)V

    new-instance v13, Lsc/u0;

    move-object/from16 v59, v0

    const/4 v0, 0x3

    invoke-direct {v13, v0}, Lsc/u0;-><init>(I)V

    const-string v48, "labelScale"

    const-string v50, "\u0420\u043e\u0437\u043c\u0456\u0440 \u043f\u0456\u0434\u043f\u0438\u0441\u0456\u0432 \u0432\u0443\u043b\u0438\u0446\u044c \u0456 \u0431\u0443\u0434\u0438\u043d\u043a\u0456\u0432"

    const-string v51, "\u041e\u0434\u0438\u043d \u043f\u043e\u0432\u0437\u0443\u043d\u043e\u043a \u0434\u043b\u044f \u043d\u0430\u0437\u0432 \u0432\u0443\u043b\u0438\u0446\u044c \u0456 \u043d\u043e\u043c\u0435\u0440\u0456\u0432 \u0431\u0443\u0434\u0438\u043d\u043a\u0456\u0432 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456. 1 \u2014 \u0437\u0432\u0438\u0447\u0430\u0439\u043d\u0438\u0439 \u0440\u043e\u0437\u043c\u0456\u0440 (\u043d\u0430\u0437\u0432\u0438 \u0432\u0443\u043b\u0438\u0446\u044c \u0456 \u0442\u0430\u043a \u0442\u0440\u043e\u0445\u0438 \u0437\u0431\u0456\u043b\u044c\u0448\u0435\u043d\u0456)."

    const-string v52, "\u00d7"

    const-wide v53, 0x3fe999999999999aL    # 0.8

    const-wide/high16 v55, 0x4000000000000000L    # 2.0

    const-wide v57, 0x3fa999999999999aL    # 0.05

    move-object/from16 v60, v13

    move-object/from16 v47, v36

    invoke-direct/range {v47 .. v61}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    new-instance v37, Lsc/v0;

    sget-object v49, Lsc/w0;->q:Lsc/w0;

    new-instance v0, Lsc/t0;

    const/16 v13, 0x9

    invoke-direct {v0, v13}, Lsc/t0;-><init>(I)V

    new-instance v13, Lsc/u0;

    move-object/from16 v59, v0

    const/4 v0, 0x4

    invoke-direct {v13, v0}, Lsc/u0;-><init>(I)V

    const-string v48, "maxLogMb"

    const-string v50, "\u0420\u043e\u0437\u043c\u0456\u0440 \u0444\u0430\u0439\u043b\u0430 \u043b\u043e\u0433\u0443"

    const-string v51, "\u041f\u0456\u0441\u043b\u044f \u0446\u044c\u043e\u0433\u043e \u0440\u043e\u0437\u043c\u0456\u0440\u0443 \u0437\u0430\u043f\u0438\u0441 \u043f\u0440\u043e\u0434\u043e\u0432\u0436\u0443\u0454\u0442\u044c\u0441\u044f \u0432 \u043d\u043e\u0432\u043e\u043c\u0443 \u0444\u0430\u0439\u043b\u0456."

    const-string v52, "\u041c\u0411"

    const-wide/high16 v53, 0x4014000000000000L    # 5.0

    const-wide/high16 v55, 0x4059000000000000L    # 100.0

    const-wide/high16 v57, 0x4014000000000000L    # 5.0

    move-object/from16 v60, v13

    move-object/from16 v47, v37

    invoke-direct/range {v47 .. v61}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    new-instance v38, Lsc/v0;

    new-instance v0, Lsc/t0;

    const/16 v13, 0xa

    invoke-direct {v0, v13}, Lsc/t0;-><init>(I)V

    new-instance v13, Lsc/u0;

    move-object/from16 v59, v0

    const/4 v0, 0x5

    invoke-direct {v13, v0}, Lsc/u0;-><init>(I)V

    const-string v48, "logKeepDays"

    const-string v50, "\u0417\u0431\u0435\u0440\u0456\u0433\u0430\u0442\u0438 \u043b\u043e\u0433\u0438 \u043d\u0430 \u0442\u0435\u043b\u0435\u0444\u043e\u043d\u0456"

    const-string v51, "\u041b\u043e\u0433\u0438 \u0439 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0438 \u043f\u043e\u0457\u0437\u0434\u043e\u043a, \u0441\u0442\u0430\u0440\u0448\u0456 \u0437\u0430 \u0441\u0442\u0456\u043b\u044c\u043a\u0438 \u0434\u043d\u0456\u0432, \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043e\u043a \u0432\u0438\u0434\u0430\u043b\u044f\u0454 \u0441\u0430\u043c \u043f\u0440\u0438 \u0437\u0430\u043f\u0443\u0441\u043a\u0443 (\u043f\u043e\u0442\u043e\u0447\u043d\u0438\u0439 \u0437\u0430\u043f\u0438\u0441 \u043d\u0435 \u0447\u0456\u043f\u0430\u0454). 0 \u2014 \u043d\u0435 \u0432\u0438\u0434\u0430\u043b\u044f\u0442\u0438."

    const-string v52, "\u0434\u043d"

    const-wide/16 v53, 0x0

    const-wide v55, 0x4066800000000000L    # 180.0

    move-object/from16 v60, v13

    move-object/from16 v47, v38

    invoke-direct/range {v47 .. v61}, Lsc/v0;-><init>(Ljava/lang/String;Lsc/w0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDDLi9/c;Li9/e;Z)V

    move-object v13, v2

    move-object/from16 v2, v45

    move-object/from16 v31, v46

    filled-new-array/range {v1 .. v38}, [Lsc/v0;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lua/nav/Tuning;->W:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDII)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    .line 2
    const-string p3, "default"

    .line 3
    :cond_0
    iput-object p3, p0, Lua/nav/Tuning;->a:Ljava/lang/String;

    and-int/lit8 p3, p1, 0x2

    if-nez p3, :cond_1

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lua/nav/Tuning;->b:J

    goto :goto_0

    :cond_1
    iput-wide p4, p0, Lua/nav/Tuning;->b:J

    :goto_0
    and-int/lit8 p3, p1, 0x4

    if-nez p3, :cond_2

    const-wide/16 v0, 0x5dc

    :goto_1
    iput-wide v0, p0, Lua/nav/Tuning;->c:J

    goto :goto_2

    :cond_2
    move-wide v0, p6

    goto :goto_1

    :goto_2
    and-int/lit8 p3, p1, 0x8

    if-nez p3, :cond_3

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    :goto_3
    iput-wide v0, p0, Lua/nav/Tuning;->d:D

    goto :goto_4

    :cond_3
    move-wide/from16 v0, p8

    goto :goto_3

    :goto_4
    and-int/lit8 p3, p1, 0x10

    if-nez p3, :cond_4

    const-wide v0, 0x3fd3333333333333L    # 0.3

    :goto_5
    iput-wide v0, p0, Lua/nav/Tuning;->e:D

    goto :goto_6

    :cond_4
    move-wide/from16 v0, p10

    goto :goto_5

    :goto_6
    and-int/lit8 p3, p1, 0x20

    if-nez p3, :cond_5

    const-wide v0, 0x3f9eb851eb851eb8L    # 0.03

    :goto_7
    iput-wide v0, p0, Lua/nav/Tuning;->f:D

    goto :goto_8

    :cond_5
    move-wide/from16 v0, p12

    goto :goto_7

    :goto_8
    and-int/lit8 p3, p1, 0x40

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-nez p3, :cond_6

    iput-wide v0, p0, Lua/nav/Tuning;->g:D

    goto :goto_9

    :cond_6
    move-wide/from16 v2, p14

    iput-wide v2, p0, Lua/nav/Tuning;->g:D

    :goto_9
    and-int/lit16 p3, p1, 0x80

    if-nez p3, :cond_7

    iput-wide v0, p0, Lua/nav/Tuning;->h:D

    goto :goto_a

    :cond_7
    move-wide/from16 v2, p16

    iput-wide v2, p0, Lua/nav/Tuning;->h:D

    :goto_a
    and-int/lit16 p3, p1, 0x100

    if-nez p3, :cond_8

    :goto_b
    iput-wide v0, p0, Lua/nav/Tuning;->i:D

    goto :goto_c

    :cond_8
    move-wide/from16 v0, p18

    goto :goto_b

    :goto_c
    and-int/lit16 p3, p1, 0x200

    if-nez p3, :cond_9

    const-wide v0, 0x3fb999999999999aL    # 0.1

    :goto_d
    iput-wide v0, p0, Lua/nav/Tuning;->j:D

    goto :goto_e

    :cond_9
    move-wide/from16 v0, p20

    goto :goto_d

    :goto_e
    and-int/lit16 p3, p1, 0x400

    if-nez p3, :cond_a

    const-wide/16 v0, 0x2bc

    :goto_f
    iput-wide v0, p0, Lua/nav/Tuning;->k:J

    goto :goto_10

    :cond_a
    move-wide/from16 v0, p22

    goto :goto_f

    :goto_10
    and-int/lit16 p3, p1, 0x800

    const-wide/16 v0, 0x1f40

    if-nez p3, :cond_b

    iput-wide v0, p0, Lua/nav/Tuning;->l:J

    goto :goto_11

    :cond_b
    move-wide/from16 v2, p24

    iput-wide v2, p0, Lua/nav/Tuning;->l:J

    :goto_11
    and-int/lit16 p3, p1, 0x1000

    const-wide/16 v2, 0xbb8

    if-nez p3, :cond_c

    iput-wide v2, p0, Lua/nav/Tuning;->m:J

    goto :goto_12

    :cond_c
    move-wide/from16 v4, p26

    iput-wide v4, p0, Lua/nav/Tuning;->m:J

    :goto_12
    and-int/lit16 p3, p1, 0x2000

    if-nez p3, :cond_d

    const-wide v4, 0x3fe3333333333333L    # 0.6

    :goto_13
    iput-wide v4, p0, Lua/nav/Tuning;->n:D

    goto :goto_14

    :cond_d
    move-wide/from16 v4, p28

    goto :goto_13

    :goto_14
    and-int/lit16 p3, p1, 0x4000

    if-nez p3, :cond_e

    const-wide v4, 0x4041800000000000L    # 35.0

    :goto_15
    iput-wide v4, p0, Lua/nav/Tuning;->o:D

    goto :goto_16

    :cond_e
    move-wide/from16 v4, p30

    goto :goto_15

    :goto_16
    const p3, 0x8000

    and-int/2addr p3, p1

    if-nez p3, :cond_f

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    :goto_17
    iput-wide v4, p0, Lua/nav/Tuning;->p:D

    goto :goto_18

    :cond_f
    move-wide/from16 v4, p32

    goto :goto_17

    :goto_18
    const/high16 p3, 0x10000

    and-int/2addr p3, p1

    if-nez p3, :cond_10

    const-wide/high16 v4, 0x4079000000000000L    # 400.0

    :goto_19
    iput-wide v4, p0, Lua/nav/Tuning;->q:D

    goto :goto_1a

    :cond_10
    move-wide/from16 v4, p34

    goto :goto_19

    :goto_1a
    const/high16 p3, 0x20000

    and-int/2addr p3, p1

    const-wide v4, 0x4072c00000000000L    # 300.0

    if-nez p3, :cond_11

    iput-wide v4, p0, Lua/nav/Tuning;->r:D

    goto :goto_1b

    :cond_11
    move-wide/from16 v6, p36

    iput-wide v6, p0, Lua/nav/Tuning;->r:D

    :goto_1b
    const/high16 p3, 0x40000

    and-int/2addr p3, p1

    if-nez p3, :cond_12

    const-wide/16 v6, 0x1770

    :goto_1c
    iput-wide v6, p0, Lua/nav/Tuning;->s:J

    goto :goto_1d

    :cond_12
    move-wide/from16 v6, p38

    goto :goto_1c

    :goto_1d
    const/high16 p3, 0x80000

    and-int/2addr p3, p1

    const/4 v6, 0x1

    if-nez p3, :cond_13

    iput-boolean v6, p0, Lua/nav/Tuning;->t:Z

    goto :goto_1e

    :cond_13
    move/from16 p3, p40

    iput-boolean p3, p0, Lua/nav/Tuning;->t:Z

    :goto_1e
    const/high16 p3, 0x100000

    and-int/2addr p3, p1

    if-nez p3, :cond_14

    iput-boolean v6, p0, Lua/nav/Tuning;->u:Z

    goto :goto_1f

    :cond_14
    move/from16 p3, p41

    iput-boolean p3, p0, Lua/nav/Tuning;->u:Z

    :goto_1f
    const/high16 p3, 0x200000

    and-int/2addr p3, p1

    if-nez p3, :cond_15

    iput-boolean v6, p0, Lua/nav/Tuning;->v:Z

    goto :goto_20

    :cond_15
    move/from16 p3, p42

    iput-boolean p3, p0, Lua/nav/Tuning;->v:Z

    :goto_20
    const/high16 p3, 0x400000

    and-int/2addr p3, p1

    if-nez p3, :cond_16

    const/16 p3, 0x19

    :goto_21
    iput p3, p0, Lua/nav/Tuning;->w:I

    goto :goto_22

    :cond_16
    move/from16 p3, p43

    goto :goto_21

    :goto_22
    const/high16 p3, 0x800000

    and-int/2addr p3, p1

    if-nez p3, :cond_17

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    :goto_23
    iput-wide v7, p0, Lua/nav/Tuning;->x:D

    goto :goto_24

    :cond_17
    move-wide/from16 v7, p44

    goto :goto_23

    :goto_24
    const/high16 p3, 0x1000000

    and-int/2addr p3, p1

    if-nez p3, :cond_18

    :goto_25
    iput-wide v0, p0, Lua/nav/Tuning;->y:J

    goto :goto_26

    :cond_18
    move-wide/from16 v0, p46

    goto :goto_25

    :goto_26
    const/high16 p3, 0x2000000

    and-int/2addr p3, p1

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    if-nez p3, :cond_19

    iput-wide v0, p0, Lua/nav/Tuning;->z:D

    goto :goto_27

    :cond_19
    move-wide/from16 v7, p48

    iput-wide v7, p0, Lua/nav/Tuning;->z:D

    :goto_27
    const/high16 p3, 0x4000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1a

    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    :goto_28
    iput-wide v7, p0, Lua/nav/Tuning;->A:D

    goto :goto_29

    :cond_1a
    move-wide/from16 v7, p50

    goto :goto_28

    :goto_29
    const/high16 p3, 0x8000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1b

    :goto_2a
    iput-wide v2, p0, Lua/nav/Tuning;->B:J

    goto :goto_2b

    :cond_1b
    move-wide/from16 v2, p52

    goto :goto_2a

    :goto_2b
    const/high16 p3, 0x10000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1c

    :goto_2c
    iput-wide v0, p0, Lua/nav/Tuning;->C:D

    goto :goto_2d

    :cond_1c
    move-wide/from16 v0, p54

    goto :goto_2c

    :goto_2d
    const/high16 p3, 0x20000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1d

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    :goto_2e
    iput-wide v0, p0, Lua/nav/Tuning;->D:D

    goto :goto_2f

    :cond_1d
    move-wide/from16 v0, p56

    goto :goto_2e

    :goto_2f
    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p3, p1

    if-nez p3, :cond_1e

    const-wide v0, 0x4062c00000000000L    # 150.0

    :goto_30
    iput-wide v0, p0, Lua/nav/Tuning;->E:D

    goto :goto_31

    :cond_1e
    move-wide/from16 v0, p58

    goto :goto_30

    :goto_31
    const/high16 p3, -0x80000000

    and-int/2addr p1, p3

    if-nez p1, :cond_1f

    iput-boolean v6, p0, Lua/nav/Tuning;->F:Z

    goto :goto_32

    :cond_1f
    move/from16 p1, p60

    iput-boolean p1, p0, Lua/nav/Tuning;->F:Z

    :goto_32
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_20

    iput-boolean v6, p0, Lua/nav/Tuning;->G:Z

    goto :goto_33

    :cond_20
    move/from16 p1, p61

    iput-boolean p1, p0, Lua/nav/Tuning;->G:Z

    :goto_33
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_21

    iput-boolean v6, p0, Lua/nav/Tuning;->H:Z

    goto :goto_34

    :cond_21
    move/from16 p1, p62

    iput-boolean p1, p0, Lua/nav/Tuning;->H:Z

    :goto_34
    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_22

    const-wide v0, 0x4056800000000000L    # 90.0

    :goto_35
    iput-wide v0, p0, Lua/nav/Tuning;->I:D

    goto :goto_36

    :cond_22
    move-wide/from16 v0, p63

    goto :goto_35

    :goto_36
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_23

    const/16 p1, 0x8

    :goto_37
    iput p1, p0, Lua/nav/Tuning;->J:I

    goto :goto_38

    :cond_23
    move/from16 p1, p65

    goto :goto_37

    :goto_38
    and-int/lit8 p1, p2, 0x10

    const/4 p3, 0x0

    if-nez p1, :cond_24

    iput-boolean p3, p0, Lua/nav/Tuning;->K:Z

    goto :goto_39

    :cond_24
    move/from16 p1, p66

    iput-boolean p1, p0, Lua/nav/Tuning;->K:Z

    :goto_39
    and-int/lit8 p1, p2, 0x20

    if-nez p1, :cond_25

    const-wide v0, 0x406f400000000000L    # 250.0

    :goto_3a
    iput-wide v0, p0, Lua/nav/Tuning;->L:D

    goto :goto_3b

    :cond_25
    move-wide/from16 v0, p67

    goto :goto_3a

    :goto_3b
    and-int/lit8 p1, p2, 0x40

    if-nez p1, :cond_26

    const-wide v0, 0x409f400000000000L    # 2000.0

    :goto_3c
    iput-wide v0, p0, Lua/nav/Tuning;->M:D

    goto :goto_3d

    :cond_26
    move-wide/from16 v0, p69

    goto :goto_3c

    :goto_3d
    and-int/lit16 p1, p2, 0x80

    if-nez p1, :cond_27

    const-wide v0, 0x4085e00000000000L    # 700.0

    :goto_3e
    iput-wide v0, p0, Lua/nav/Tuning;->N:D

    goto :goto_3f

    :cond_27
    move-wide/from16 v0, p71

    goto :goto_3e

    :goto_3f
    and-int/lit16 p1, p2, 0x100

    if-nez p1, :cond_28

    iput-wide v4, p0, Lua/nav/Tuning;->O:D

    goto :goto_40

    :cond_28
    move-wide/from16 v0, p73

    iput-wide v0, p0, Lua/nav/Tuning;->O:D

    :goto_40
    and-int/lit16 p1, p2, 0x200

    if-nez p1, :cond_29

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    :goto_41
    iput-wide v0, p0, Lua/nav/Tuning;->P:D

    goto :goto_42

    :cond_29
    move-wide/from16 v0, p75

    goto :goto_41

    :goto_42
    and-int/lit16 p1, p2, 0x400

    if-nez p1, :cond_2a

    const/16 p1, 0x14

    :goto_43
    iput p1, p0, Lua/nav/Tuning;->Q:I

    goto :goto_44

    :cond_2a
    move/from16 p1, p77

    goto :goto_43

    :goto_44
    and-int/lit16 p1, p2, 0x800

    if-nez p1, :cond_2b

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_45
    iput-wide v0, p0, Lua/nav/Tuning;->R:D

    goto :goto_46

    :cond_2b
    move-wide/from16 v0, p78

    goto :goto_45

    :goto_46
    and-int/lit16 p1, p2, 0x1000

    if-nez p1, :cond_2c

    const/16 p1, 0xf

    :goto_47
    iput p1, p0, Lua/nav/Tuning;->S:I

    goto :goto_48

    :cond_2c
    move/from16 p1, p80

    goto :goto_47

    :goto_48
    and-int/lit16 p1, p2, 0x2000

    if-nez p1, :cond_2d

    iput p3, p0, Lua/nav/Tuning;->T:I

    return-void

    :cond_2d
    move/from16 p1, p81

    iput p1, p0, Lua/nav/Tuning;->T:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDII)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lua/nav/Tuning;->a:Ljava/lang/String;

    .line 6
    iput-wide p2, p0, Lua/nav/Tuning;->b:J

    .line 7
    iput-wide p4, p0, Lua/nav/Tuning;->c:J

    .line 8
    iput-wide p6, p0, Lua/nav/Tuning;->d:D

    .line 9
    iput-wide p8, p0, Lua/nav/Tuning;->e:D

    .line 10
    iput-wide p10, p0, Lua/nav/Tuning;->f:D

    .line 11
    iput-wide p12, p0, Lua/nav/Tuning;->g:D

    .line 12
    iput-wide p14, p0, Lua/nav/Tuning;->h:D

    move-wide/from16 p1, p16

    .line 13
    iput-wide p1, p0, Lua/nav/Tuning;->i:D

    move-wide/from16 p1, p18

    .line 14
    iput-wide p1, p0, Lua/nav/Tuning;->j:D

    move-wide/from16 p1, p20

    .line 15
    iput-wide p1, p0, Lua/nav/Tuning;->k:J

    move-wide/from16 p1, p22

    .line 16
    iput-wide p1, p0, Lua/nav/Tuning;->l:J

    move-wide/from16 p1, p24

    .line 17
    iput-wide p1, p0, Lua/nav/Tuning;->m:J

    move-wide/from16 p1, p26

    .line 18
    iput-wide p1, p0, Lua/nav/Tuning;->n:D

    move-wide/from16 p1, p28

    .line 19
    iput-wide p1, p0, Lua/nav/Tuning;->o:D

    move-wide/from16 p1, p30

    .line 20
    iput-wide p1, p0, Lua/nav/Tuning;->p:D

    move-wide/from16 p1, p32

    .line 21
    iput-wide p1, p0, Lua/nav/Tuning;->q:D

    move-wide/from16 p1, p34

    .line 22
    iput-wide p1, p0, Lua/nav/Tuning;->r:D

    move-wide/from16 p1, p36

    .line 23
    iput-wide p1, p0, Lua/nav/Tuning;->s:J

    move/from16 p1, p38

    .line 24
    iput-boolean p1, p0, Lua/nav/Tuning;->t:Z

    move/from16 p1, p39

    .line 25
    iput-boolean p1, p0, Lua/nav/Tuning;->u:Z

    move/from16 p1, p40

    .line 26
    iput-boolean p1, p0, Lua/nav/Tuning;->v:Z

    move/from16 p1, p41

    .line 27
    iput p1, p0, Lua/nav/Tuning;->w:I

    move-wide/from16 p1, p42

    .line 28
    iput-wide p1, p0, Lua/nav/Tuning;->x:D

    move-wide/from16 p1, p44

    .line 29
    iput-wide p1, p0, Lua/nav/Tuning;->y:J

    move-wide/from16 p1, p46

    .line 30
    iput-wide p1, p0, Lua/nav/Tuning;->z:D

    move-wide/from16 p1, p48

    .line 31
    iput-wide p1, p0, Lua/nav/Tuning;->A:D

    move-wide/from16 p1, p50

    .line 32
    iput-wide p1, p0, Lua/nav/Tuning;->B:J

    move-wide/from16 p1, p52

    .line 33
    iput-wide p1, p0, Lua/nav/Tuning;->C:D

    move-wide/from16 p1, p54

    .line 34
    iput-wide p1, p0, Lua/nav/Tuning;->D:D

    move-wide/from16 p1, p56

    .line 35
    iput-wide p1, p0, Lua/nav/Tuning;->E:D

    move/from16 p1, p58

    .line 36
    iput-boolean p1, p0, Lua/nav/Tuning;->F:Z

    move/from16 p1, p59

    .line 37
    iput-boolean p1, p0, Lua/nav/Tuning;->G:Z

    move/from16 p1, p60

    .line 38
    iput-boolean p1, p0, Lua/nav/Tuning;->H:Z

    move-wide/from16 p1, p61

    .line 39
    iput-wide p1, p0, Lua/nav/Tuning;->I:D

    move/from16 p1, p63

    .line 40
    iput p1, p0, Lua/nav/Tuning;->J:I

    move/from16 p1, p64

    .line 41
    iput-boolean p1, p0, Lua/nav/Tuning;->K:Z

    move-wide/from16 p1, p65

    .line 42
    iput-wide p1, p0, Lua/nav/Tuning;->L:D

    move-wide/from16 p1, p67

    .line 43
    iput-wide p1, p0, Lua/nav/Tuning;->M:D

    move-wide/from16 p1, p69

    .line 44
    iput-wide p1, p0, Lua/nav/Tuning;->N:D

    move-wide/from16 p1, p71

    .line 45
    iput-wide p1, p0, Lua/nav/Tuning;->O:D

    move-wide/from16 p1, p73

    .line 46
    iput-wide p1, p0, Lua/nav/Tuning;->P:D

    move/from16 p1, p75

    .line 47
    iput p1, p0, Lua/nav/Tuning;->Q:I

    move-wide/from16 p1, p76

    .line 48
    iput-wide p1, p0, Lua/nav/Tuning;->R:D

    move/from16 p1, p78

    .line 49
    iput p1, p0, Lua/nav/Tuning;->S:I

    move/from16 p1, p79

    .line 50
    iput p1, p0, Lua/nav/Tuning;->T:I

    return-void
.end method

.method public static b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p80

    move/from16 v2, p81

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    iget-object v3, v0, Lua/nav/Tuning;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lua/nav/Tuning;->b:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p2

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-wide v6, v0, Lua/nav/Tuning;->c:J

    goto :goto_2

    :cond_2
    move-wide/from16 v6, p4

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    iget-wide v8, v0, Lua/nav/Tuning;->d:D

    goto :goto_3

    :cond_3
    move-wide/from16 v8, p6

    :goto_3
    and-int/lit8 v10, v1, 0x10

    if-eqz v10, :cond_4

    iget-wide v10, v0, Lua/nav/Tuning;->e:D

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p8

    :goto_4
    and-int/lit8 v12, v1, 0x20

    if-eqz v12, :cond_5

    iget-wide v12, v0, Lua/nav/Tuning;->f:D

    goto :goto_5

    :cond_5
    move-wide/from16 v12, p10

    :goto_5
    and-int/lit8 v14, v1, 0x40

    if-eqz v14, :cond_6

    iget-wide v14, v0, Lua/nav/Tuning;->g:D

    goto :goto_6

    :cond_6
    move-wide/from16 v14, p12

    :goto_6
    move-wide/from16 p2, v4

    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_7

    iget-wide v4, v0, Lua/nav/Tuning;->h:D

    goto :goto_7

    :cond_7
    move-wide/from16 v4, p14

    :goto_7
    move-wide/from16 p14, v4

    and-int/lit16 v4, v1, 0x100

    if-eqz v4, :cond_8

    iget-wide v4, v0, Lua/nav/Tuning;->i:D

    goto :goto_8

    :cond_8
    move-wide/from16 v4, p16

    :goto_8
    move-wide/from16 p16, v4

    and-int/lit16 v4, v1, 0x200

    if-eqz v4, :cond_9

    iget-wide v4, v0, Lua/nav/Tuning;->j:D

    goto :goto_9

    :cond_9
    move-wide/from16 v4, p18

    :goto_9
    move-wide/from16 p18, v4

    and-int/lit16 v4, v1, 0x400

    if-eqz v4, :cond_a

    iget-wide v4, v0, Lua/nav/Tuning;->k:J

    goto :goto_a

    :cond_a
    move-wide/from16 v4, p20

    :goto_a
    move-wide/from16 p20, v4

    and-int/lit16 v4, v1, 0x800

    if-eqz v4, :cond_b

    iget-wide v4, v0, Lua/nav/Tuning;->l:J

    goto :goto_b

    :cond_b
    move-wide/from16 v4, p22

    :goto_b
    move-wide/from16 p22, v4

    and-int/lit16 v4, v1, 0x1000

    if-eqz v4, :cond_c

    iget-wide v4, v0, Lua/nav/Tuning;->m:J

    goto :goto_c

    :cond_c
    move-wide/from16 v4, p24

    :goto_c
    move-wide/from16 p24, v4

    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_d

    iget-wide v4, v0, Lua/nav/Tuning;->n:D

    goto :goto_d

    :cond_d
    move-wide/from16 v4, p26

    :goto_d
    move-wide/from16 p26, v4

    and-int/lit16 v4, v1, 0x4000

    if-eqz v4, :cond_e

    iget-wide v4, v0, Lua/nav/Tuning;->o:D

    goto :goto_e

    :cond_e
    move-wide/from16 v4, p28

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-wide/from16 p28, v4

    if-eqz v16, :cond_f

    iget-wide v4, v0, Lua/nav/Tuning;->p:D

    goto :goto_f

    :cond_f
    move-wide/from16 v4, p30

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p30, v4

    if-eqz v16, :cond_10

    iget-wide v4, v0, Lua/nav/Tuning;->q:D

    goto :goto_10

    :cond_10
    move-wide/from16 v4, p32

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-wide/from16 p32, v4

    if-eqz v16, :cond_11

    iget-wide v4, v0, Lua/nav/Tuning;->r:D

    goto :goto_11

    :cond_11
    move-wide/from16 v4, p34

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-wide/from16 p34, v4

    if-eqz v16, :cond_12

    iget-wide v4, v0, Lua/nav/Tuning;->s:J

    goto :goto_12

    :cond_12
    move-wide/from16 v4, p36

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    if-eqz v16, :cond_13

    iget-boolean v1, v0, Lua/nav/Tuning;->t:Z

    goto :goto_13

    :cond_13
    move/from16 v1, p38

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p80, v16

    move/from16 p38, v1

    if-eqz v16, :cond_14

    iget-boolean v1, v0, Lua/nav/Tuning;->u:Z

    goto :goto_14

    :cond_14
    move/from16 v1, p39

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p80, v16

    move/from16 p39, v1

    if-eqz v16, :cond_15

    iget-boolean v1, v0, Lua/nav/Tuning;->v:Z

    goto :goto_15

    :cond_15
    move/from16 v1, p40

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p80, v16

    move/from16 p40, v1

    if-eqz v16, :cond_16

    iget v1, v0, Lua/nav/Tuning;->w:I

    goto :goto_16

    :cond_16
    move/from16 v1, p41

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p80, v16

    move-wide/from16 p36, v4

    if-eqz v16, :cond_17

    iget-wide v4, v0, Lua/nav/Tuning;->x:D

    goto :goto_17

    :cond_17
    move-wide/from16 v4, p42

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p80, v16

    move-wide/from16 p42, v4

    if-eqz v16, :cond_18

    iget-wide v4, v0, Lua/nav/Tuning;->y:J

    goto :goto_18

    :cond_18
    move-wide/from16 v4, p44

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p80, v16

    move-wide/from16 p44, v4

    if-eqz v16, :cond_19

    iget-wide v4, v0, Lua/nav/Tuning;->z:D

    goto :goto_19

    :cond_19
    move-wide/from16 v4, p46

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p80, v16

    move-wide/from16 p46, v4

    if-eqz v16, :cond_1a

    iget-wide v4, v0, Lua/nav/Tuning;->A:D

    goto :goto_1a

    :cond_1a
    move-wide/from16 v4, p48

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, p80, v16

    move-wide/from16 p48, v4

    if-eqz v16, :cond_1b

    iget-wide v4, v0, Lua/nav/Tuning;->B:J

    goto :goto_1b

    :cond_1b
    move-wide/from16 v4, p50

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, p80, v16

    move-wide/from16 p50, v4

    if-eqz v16, :cond_1c

    iget-wide v4, v0, Lua/nav/Tuning;->C:D

    goto :goto_1c

    :cond_1c
    move-wide/from16 v4, p52

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, p80, v16

    move-wide/from16 p52, v4

    if-eqz v16, :cond_1d

    iget-wide v4, v0, Lua/nav/Tuning;->D:D

    goto :goto_1d

    :cond_1d
    move-wide/from16 v4, p54

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, p80, v16

    move-wide/from16 p54, v4

    if-eqz v16, :cond_1e

    iget-wide v4, v0, Lua/nav/Tuning;->E:D

    goto :goto_1e

    :cond_1e
    move-wide/from16 v4, p56

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v16, p80, v16

    move/from16 p41, v1

    if-eqz v16, :cond_1f

    iget-boolean v1, v0, Lua/nav/Tuning;->F:Z

    goto :goto_1f

    :cond_1f
    move/from16 v1, p58

    :goto_1f
    and-int/lit8 v16, v2, 0x1

    move/from16 p58, v1

    if-eqz v16, :cond_20

    iget-boolean v1, v0, Lua/nav/Tuning;->G:Z

    goto :goto_20

    :cond_20
    move/from16 v1, p59

    :goto_20
    and-int/lit8 v16, v2, 0x2

    move/from16 p59, v1

    if-eqz v16, :cond_21

    iget-boolean v1, v0, Lua/nav/Tuning;->H:Z

    goto :goto_21

    :cond_21
    move/from16 v1, p60

    :goto_21
    and-int/lit8 v16, v2, 0x4

    move-wide/from16 p56, v4

    if-eqz v16, :cond_22

    iget-wide v4, v0, Lua/nav/Tuning;->I:D

    goto :goto_22

    :cond_22
    move-wide/from16 v4, p61

    :goto_22
    and-int/lit8 v16, v2, 0x8

    move/from16 p60, v1

    if-eqz v16, :cond_23

    iget v1, v0, Lua/nav/Tuning;->J:I

    goto :goto_23

    :cond_23
    move/from16 v1, p63

    :goto_23
    and-int/lit8 v16, v2, 0x10

    move/from16 p63, v1

    if-eqz v16, :cond_24

    iget-boolean v1, v0, Lua/nav/Tuning;->K:Z

    goto :goto_24

    :cond_24
    move/from16 v1, p64

    :goto_24
    and-int/lit8 v16, v2, 0x20

    move-wide/from16 p61, v4

    if-eqz v16, :cond_25

    iget-wide v4, v0, Lua/nav/Tuning;->L:D

    goto :goto_25

    :cond_25
    move-wide/from16 v4, p65

    :goto_25
    and-int/lit8 v16, v2, 0x40

    move-wide/from16 p65, v4

    if-eqz v16, :cond_26

    iget-wide v4, v0, Lua/nav/Tuning;->M:D

    goto :goto_26

    :cond_26
    move-wide/from16 v4, p67

    :goto_26
    move/from16 p64, v1

    and-int/lit16 v1, v2, 0x80

    move-wide/from16 p67, v4

    if-eqz v1, :cond_27

    iget-wide v4, v0, Lua/nav/Tuning;->N:D

    goto :goto_27

    :cond_27
    move-wide/from16 v4, p69

    :goto_27
    and-int/lit16 v1, v2, 0x100

    move-wide/from16 p69, v4

    if-eqz v1, :cond_28

    iget-wide v4, v0, Lua/nav/Tuning;->O:D

    goto :goto_28

    :cond_28
    move-wide/from16 v4, p71

    :goto_28
    and-int/lit16 v1, v2, 0x200

    move-wide/from16 p71, v4

    if-eqz v1, :cond_29

    iget-wide v4, v0, Lua/nav/Tuning;->P:D

    goto :goto_29

    :cond_29
    move-wide/from16 v4, p73

    :goto_29
    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2a

    iget v1, v0, Lua/nav/Tuning;->Q:I

    goto :goto_2a

    :cond_2a
    move/from16 v1, p75

    :goto_2a
    move/from16 p75, v1

    and-int/lit16 v1, v2, 0x800

    move-wide/from16 p73, v4

    if-eqz v1, :cond_2b

    iget-wide v4, v0, Lua/nav/Tuning;->R:D

    goto :goto_2b

    :cond_2b
    move-wide/from16 v4, p76

    :goto_2b
    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_2c

    iget v1, v0, Lua/nav/Tuning;->S:I

    goto :goto_2c

    :cond_2c
    move/from16 v1, p78

    :goto_2c
    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_2d

    iget v2, v0, Lua/nav/Tuning;->T:I

    goto :goto_2d

    :cond_2d
    move/from16 v2, p79

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "preset"

    invoke-static {v3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lua/nav/Tuning;

    move-object/from16 p0, v0

    move/from16 p78, v1

    move/from16 p79, v2

    move-object/from16 p1, v3

    move-wide/from16 p76, v4

    move-wide/from16 p4, v6

    move-wide/from16 p6, v8

    move-wide/from16 p8, v10

    move-wide/from16 p10, v12

    move-wide/from16 p12, v14

    invoke-direct/range {p0 .. p79}, Lua/nav/Tuning;-><init>(Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDII)V

    return-object v0
.end method


# virtual methods
.method public final a()Lua/nav/Tuning;
    .locals 83

    sget-object v0, Lua/nav/Tuning;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v1, p0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/v0;

    iget-object v3, v2, Lsc/v0;->j:Li9/e;

    iget-object v4, v2, Lsc/v0;->i:Li9/c;

    invoke-interface {v4, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    iget-wide v7, v2, Lsc/v0;->f:D

    iget-wide v9, v2, Lsc/v0;->g:D

    invoke-static/range {v5 .. v10}, Lg6/c1;->d(DDD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/Tuning;

    goto :goto_0

    :cond_0
    iget-wide v2, v1, Lua/nav/Tuning;->N:D

    iget-wide v4, v1, Lua/nav/Tuning;->M:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    move-wide/from16 v70, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v70, v2

    :goto_1
    iget-wide v2, v1, Lua/nav/Tuning;->O:D

    cmpl-double v0, v2, v70

    if-lez v0, :cond_2

    move-wide/from16 v72, v70

    goto :goto_2

    :cond_2
    move-wide/from16 v72, v2

    :goto_2
    const/16 v81, -0x1

    const/16 v82, 0x3e7f

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 83

    const/16 v81, -0x2

    const/16 v82, 0x3fff

    const-string v2, "default"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    sget-object v2, Lua/nav/Tuning;->U:Lua/nav/Tuning;

    invoke-virtual {v0, v2}, Lua/nav/Tuning;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "preset="

    iget-object v4, v1, Lua/nav/Tuning;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, " factory"

    invoke-static {v3, v4, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lua/nav/Tuning;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsc/v0;

    iget-object v7, v6, Lsc/v0;->i:Li9/c;

    invoke-interface {v7, v1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    iget-object v9, v6, Lsc/v0;->i:Li9/c;

    invoke-interface {v9, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    cmpg-double v9, v7, v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v6, Lsc/v0;->a:Ljava/lang/String;

    sget-object v9, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8}, Ljava/lang/Math;->rint(D)D

    move-result-wide v9

    cmpg-double v9, v7, v9

    if-nez v9, :cond_2

    double-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_2
    const/4 v9, 0x3

    invoke-static {v7, v8, v9}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v7

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-boolean v0, v2, Lua/nav/Tuning;->F:Z

    iget-boolean v6, v1, Lua/nav/Tuning;->F:Z

    if-eq v6, v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "speedPlan="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v0, v2, Lua/nav/Tuning;->G:Z

    iget-boolean v6, v1, Lua/nav/Tuning;->G:Z

    if-eq v6, v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "signalSnap="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-boolean v0, v2, Lua/nav/Tuning;->H:Z

    iget-boolean v6, v1, Lua/nav/Tuning;->H:Z

    if-eq v6, v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "blindDeviationEnabled="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-boolean v0, v2, Lua/nav/Tuning;->t:Z

    iget-boolean v6, v1, Lua/nav/Tuning;->t:Z

    if-eq v6, v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "turnHoldEnabled="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-boolean v0, v2, Lua/nav/Tuning;->u:Z

    iget-boolean v6, v1, Lua/nav/Tuning;->u:Z

    if-eq v6, v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "roadSnap="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-boolean v0, v2, Lua/nav/Tuning;->v:Z

    iget-boolean v6, v1, Lua/nav/Tuning;->v:Z

    if-eq v6, v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "roadSnapGps="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-boolean v0, v2, Lua/nav/Tuning;->K:Z

    iget-boolean v1, v1, Lua/nav/Tuning;->K:Z

    if-eq v1, v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "missedTurnEnabled="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const/4 v9, 0x0

    const/16 v10, 0x3e

    const-string v6, " "

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-static {v3, v4, v1, v0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()D
    .locals 2

    iget-wide v0, p0, Lua/nav/Tuning;->R:D

    return-wide v0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lua/nav/Tuning;->Q:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lua/nav/Tuning;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lua/nav/Tuning;

    iget-object v1, p0, Lua/nav/Tuning;->a:Ljava/lang/String;

    iget-object v3, p1, Lua/nav/Tuning;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lua/nav/Tuning;->b:J

    iget-wide v5, p1, Lua/nav/Tuning;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lua/nav/Tuning;->c:J

    iget-wide v5, p1, Lua/nav/Tuning;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lua/nav/Tuning;->d:D

    iget-wide v5, p1, Lua/nav/Tuning;->d:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lua/nav/Tuning;->e:D

    iget-wide v5, p1, Lua/nav/Tuning;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lua/nav/Tuning;->f:D

    iget-wide v5, p1, Lua/nav/Tuning;->f:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lua/nav/Tuning;->g:D

    iget-wide v5, p1, Lua/nav/Tuning;->g:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lua/nav/Tuning;->h:D

    iget-wide v5, p1, Lua/nav/Tuning;->h:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lua/nav/Tuning;->i:D

    iget-wide v5, p1, Lua/nav/Tuning;->i:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lua/nav/Tuning;->j:D

    iget-wide v5, p1, Lua/nav/Tuning;->j:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lua/nav/Tuning;->k:J

    iget-wide v5, p1, Lua/nav/Tuning;->k:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lua/nav/Tuning;->l:J

    iget-wide v5, p1, Lua/nav/Tuning;->l:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lua/nav/Tuning;->m:J

    iget-wide v5, p1, Lua/nav/Tuning;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lua/nav/Tuning;->n:D

    iget-wide v5, p1, Lua/nav/Tuning;->n:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lua/nav/Tuning;->o:D

    iget-wide v5, p1, Lua/nav/Tuning;->o:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lua/nav/Tuning;->p:D

    iget-wide v5, p1, Lua/nav/Tuning;->p:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-wide v3, p0, Lua/nav/Tuning;->q:D

    iget-wide v5, p1, Lua/nav/Tuning;->q:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lua/nav/Tuning;->r:D

    iget-wide v5, p1, Lua/nav/Tuning;->r:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lua/nav/Tuning;->s:J

    iget-wide v5, p1, Lua/nav/Tuning;->s:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Lua/nav/Tuning;->t:Z

    iget-boolean v3, p1, Lua/nav/Tuning;->t:Z

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lua/nav/Tuning;->u:Z

    iget-boolean v3, p1, Lua/nav/Tuning;->u:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lua/nav/Tuning;->v:Z

    iget-boolean v3, p1, Lua/nav/Tuning;->v:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lua/nav/Tuning;->w:I

    iget v3, p1, Lua/nav/Tuning;->w:I

    if-eq v1, v3, :cond_18

    return v2

    :cond_18
    iget-wide v3, p0, Lua/nav/Tuning;->x:D

    iget-wide v5, p1, Lua/nav/Tuning;->x:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_19

    return v2

    :cond_19
    iget-wide v3, p0, Lua/nav/Tuning;->y:J

    iget-wide v5, p1, Lua/nav/Tuning;->y:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1a

    return v2

    :cond_1a
    iget-wide v3, p0, Lua/nav/Tuning;->z:D

    iget-wide v5, p1, Lua/nav/Tuning;->z:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_1b

    return v2

    :cond_1b
    iget-wide v3, p0, Lua/nav/Tuning;->A:D

    iget-wide v5, p1, Lua/nav/Tuning;->A:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget-wide v3, p0, Lua/nav/Tuning;->B:J

    iget-wide v5, p1, Lua/nav/Tuning;->B:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1d

    return v2

    :cond_1d
    iget-wide v3, p0, Lua/nav/Tuning;->C:D

    iget-wide v5, p1, Lua/nav/Tuning;->C:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lua/nav/Tuning;->D:D

    iget-wide v5, p1, Lua/nav/Tuning;->D:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_1f

    return v2

    :cond_1f
    iget-wide v3, p0, Lua/nav/Tuning;->E:D

    iget-wide v5, p1, Lua/nav/Tuning;->E:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_20

    return v2

    :cond_20
    iget-boolean v1, p0, Lua/nav/Tuning;->F:Z

    iget-boolean v3, p1, Lua/nav/Tuning;->F:Z

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-boolean v1, p0, Lua/nav/Tuning;->G:Z

    iget-boolean v3, p1, Lua/nav/Tuning;->G:Z

    if-eq v1, v3, :cond_22

    return v2

    :cond_22
    iget-boolean v1, p0, Lua/nav/Tuning;->H:Z

    iget-boolean v3, p1, Lua/nav/Tuning;->H:Z

    if-eq v1, v3, :cond_23

    return v2

    :cond_23
    iget-wide v3, p0, Lua/nav/Tuning;->I:D

    iget-wide v5, p1, Lua/nav/Tuning;->I:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_24

    return v2

    :cond_24
    iget v1, p0, Lua/nav/Tuning;->J:I

    iget v3, p1, Lua/nav/Tuning;->J:I

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-boolean v1, p0, Lua/nav/Tuning;->K:Z

    iget-boolean v3, p1, Lua/nav/Tuning;->K:Z

    if-eq v1, v3, :cond_26

    return v2

    :cond_26
    iget-wide v3, p0, Lua/nav/Tuning;->L:D

    iget-wide v5, p1, Lua/nav/Tuning;->L:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_27

    return v2

    :cond_27
    iget-wide v3, p0, Lua/nav/Tuning;->M:D

    iget-wide v5, p1, Lua/nav/Tuning;->M:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_28

    return v2

    :cond_28
    iget-wide v3, p0, Lua/nav/Tuning;->N:D

    iget-wide v5, p1, Lua/nav/Tuning;->N:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_29

    return v2

    :cond_29
    iget-wide v3, p0, Lua/nav/Tuning;->O:D

    iget-wide v5, p1, Lua/nav/Tuning;->O:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2a

    return v2

    :cond_2a
    iget-wide v3, p0, Lua/nav/Tuning;->P:D

    iget-wide v5, p1, Lua/nav/Tuning;->P:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2b

    return v2

    :cond_2b
    iget v1, p0, Lua/nav/Tuning;->Q:I

    iget v3, p1, Lua/nav/Tuning;->Q:I

    if-eq v1, v3, :cond_2c

    return v2

    :cond_2c
    iget-wide v3, p0, Lua/nav/Tuning;->R:D

    iget-wide v5, p1, Lua/nav/Tuning;->R:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lua/nav/Tuning;->S:I

    iget v3, p1, Lua/nav/Tuning;->S:I

    if-eq v1, v3, :cond_2e

    return v2

    :cond_2e
    iget p0, p0, Lua/nav/Tuning;->T:I

    iget p1, p1, Lua/nav/Tuning;->T:I

    if-eq p0, p1, :cond_2f

    return v2

    :cond_2f
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lua/nav/Tuning;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lua/nav/Tuning;->b:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->c:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->d:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->e:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->f:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->g:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->h:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->i:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->j:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->k:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->l:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->m:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->n:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->o:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->p:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->q:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->r:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->s:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-boolean v2, p0, Lua/nav/Tuning;->t:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lua/nav/Tuning;->u:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lua/nav/Tuning;->v:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget v2, p0, Lua/nav/Tuning;->w:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->x:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->y:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->z:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->A:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->B:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->C:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->D:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->E:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-boolean v2, p0, Lua/nav/Tuning;->F:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lua/nav/Tuning;->G:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lua/nav/Tuning;->H:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->I:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget v2, p0, Lua/nav/Tuning;->J:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-boolean v2, p0, Lua/nav/Tuning;->K:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->L:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->M:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->N:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->O:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->P:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget v2, p0, Lua/nav/Tuning;->Q:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-wide v2, p0, Lua/nav/Tuning;->R:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget v2, p0, Lua/nav/Tuning;->S:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget p0, p0, Lua/nav/Tuning;->T:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tuning(preset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lua/nav/Tuning;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stopWindowMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/Tuning;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stopHoldMs="

    const-string v2, ", stopAccMean="

    iget-wide v3, p0, Lua/nav/Tuning;->c:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", stopAccStd="

    const-string v2, ", stopGyro="

    iget-wide v3, p0, Lua/nav/Tuning;->e:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", stopGyroAccMeanMax="

    const-string v2, ", resumeAccMean="

    iget-wide v3, p0, Lua/nav/Tuning;->g:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", resumeAccStd="

    const-string v2, ", resumeGyro="

    iget-wide v3, p0, Lua/nav/Tuning;->i:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->j:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", resumeConfirmMs="

    const-string v2, ", resumeRampMs="

    iget-wide v3, p0, Lua/nav/Tuning;->k:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", resumeSlowMs="

    const-string v2, ", resumeSlowCap="

    iget-wide v3, p0, Lua/nav/Tuning;->m:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->n:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", turnMinDeg="

    const-string v2, ", turnTolDeg="

    iget-wide v3, p0, Lua/nav/Tuning;->o:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->p:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", turnBehindM="

    const-string v2, ", turnAheadM="

    iget-wide v3, p0, Lua/nav/Tuning;->q:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->r:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", turnWindowMs="

    const-string v2, ", turnHoldEnabled="

    iget-wide v3, p0, Lua/nav/Tuning;->s:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-boolean v1, p0, Lua/nav/Tuning;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", roadSnap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lua/nav/Tuning;->u:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", roadSnapGps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lua/nav/Tuning;->v:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", turnHoldMaxS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lua/nav/Tuning;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offRouteM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/Tuning;->x:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", offRouteHoldMs="

    const-string v2, ", offRouteFastM="

    iget-wide v3, p0, Lua/nav/Tuning;->y:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->z:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", offRouteFastDeg="

    const-string v2, ", offRouteFastHoldMs="

    iget-wide v3, p0, Lua/nav/Tuning;->A:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->B:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", arriveM="

    const-string v2, ", suspectNearM="

    iget-wide v3, p0, Lua/nav/Tuning;->C:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->D:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", gateMaxSpeedKmh="

    const-string v2, ", speedPlan="

    iget-wide v3, p0, Lua/nav/Tuning;->E:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-boolean v1, p0, Lua/nav/Tuning;->F:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", signalSnap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lua/nav/Tuning;->G:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blindDeviationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lua/nav/Tuning;->H:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blindDeviationMinDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/Tuning;->I:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", blindDeviationDelayS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lua/nav/Tuning;->J:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", missedTurnEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lua/nav/Tuning;->K:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", missedTurnM="

    const-string v2, ", cameraShowM="

    iget-wide v3, p0, Lua/nav/Tuning;->L:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->M:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", cameraWarnM="

    const-string v2, ", cameraBeepM="

    iget-wide v3, p0, Lua/nav/Tuning;->N:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lua/nav/Tuning;->O:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", cameraSpeedTolKmh="

    const-string v2, ", trailSeconds="

    iget-wide v3, p0, Lua/nav/Tuning;->P:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget v1, p0, Lua/nav/Tuning;->Q:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", labelScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lua/nav/Tuning;->R:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", maxLogMb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lua/nav/Tuning;->S:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", logKeepDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lua/nav/Tuning;->T:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
