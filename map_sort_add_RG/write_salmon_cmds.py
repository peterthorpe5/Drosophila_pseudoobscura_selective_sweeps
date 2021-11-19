from collections import defaultdict

import os
out = open("salmon_PT.sh","w")
out.write("#$ -cwd\n")


sample_cond = """WTCHG_323579_209	DARK_TEL_LEFT
WTCHG_323579_210	DARK_TEL_RIGHT
WTCHG_323579_221	6HLIGHT_TEL_LEFT
WTCHG_323579_222	6HLIGHT_TEL_RIGHT
WTCHG_323579_223	6HLIGHT_RET_LEFT
WTCHG_323579_224	6HLIGHT_RET_RIGHT
WTCHG_323579_241	24HLIGHT_TEL_LEFT
WTCHG_323579_242	24HLIGHT_TEL_RIGHT
WTCHG_323579_243	24HLIGHT_RET_LEFT
WTCHG_323579_244	24HLIGHT_RET_RIGHT
WTCHG_323579_245	24HLIGHT_TEL_LEFT
WTCHG_323579_246	24HLIGHT_TEL_RIGHT
WTCHG_323579_247	24HLIGHT_RET_LEFT
WTCHG_323579_248	24HLIGHT_RET_RIGHT
WTCHG_323579_249	24HLIGHT_TEL_LEFT
WTCHG_323579_250	24HLIGHT_TEL_RIGHT
WTCHG_323579_273	DARK_TEL_LEFT
WTCHG_323579_274	DARK_TEL_RIGHT
WTCHG_323579_275	DARK_RET_LEFT
WTCHG_323579_276	DARK_RET_RIGHT
WTCHG_323579_277	DARK_TEL_LEFT
WTCHG_323579_278	DARK_TEL_RIGHT
WTCHG_323579_279	DARK_RET_LEFT
WTCHG_323579_280	DARK_RET_RIGHT
WTCHG_323579_289	6HLIGHT_TEL_LEFT
WTCHG_323579_290	6HLIGHT_TEL_RIGHT
WTCHG_323579_291	6HLIGHT_RET_LEFT
WTCHG_323579_292	6HLIGHT_RET_RIGHT
WTCHG_323579_293	6HLIGHT_TEL_LEFT
WTCHG_323579_294	6HLIGHT_TEL_RIGHT
WTCHG_323580_211	DARK_RET_LEFT
WTCHG_323580_212	DARK_RET_RIGHT
WTCHG_323580_213	DARK_TEL_LEFT
WTCHG_323580_214	DARK_TEL_RIGHT
WTCHG_323580_215	DARK_RET_LEFT
WTCHG_323580_216	DARK_RET_RIGHT
WTCHG_323580_217	DARK_TEL_LEFT
WTCHG_323580_218	DARK_TEL_RIGHT
WTCHG_323580_219	DARK_RET_LEFT
WTCHG_323580_220	DARK_RET_RIGHT
WTCHG_323580_233	6HLIGHT_TEL_LEFT
WTCHG_323580_234	6HLIGHT_TEL_RIGHT
WTCHG_323580_235	6HLIGHT_RET_LEFT
WTCHG_323580_236	6HLIGHT_RET_RIGHT
WTCHG_323580_237	6HLIGHT_TEL_LEFT
WTCHG_323580_238	6HLIGHT_TEL_RIGHT
WTCHG_323580_239	6HLIGHT_RET_LEFT
WTCHG_323580_240	6HLIGHT_RET_RIGHT
WTCHG_323580_251	24HLIGHT_RET_LEFT
WTCHG_323580_252	24HLIGHT_RET_RIGHT
WTCHG_323580_253	24HLIGHT_TEL_LEFT
WTCHG_323580_254	24HLIGHT_TEL_RIGHT
WTCHG_323580_255	24HLIGHT_RET_LEFT
WTCHG_323580_256	24HLIGHT_RET_RIGHT
WTCHG_323580_257	24HLIGHT_TEL_LEFT
WTCHG_323580_258	24HLIGHT_TEL_RIGHT
WTCHG_323580_259	24HLIGHT_RET_LEFT
WTCHG_323580_295	6HLIGHT_RET_LEFT
WTCHG_323580_296	6HLIGHT_RET_RIGHT
WTCHG_323580_301	24HLIGHT_RET_RIGHT
WTCHG_328669_209	DARK_TEL_LEFT
WTCHG_328669_210	DARK_TEL_RIGHT
WTCHG_328669_221	6HLIGHT_TEL_LEFT
WTCHG_328669_222	6HLIGHT_TEL_RIGHT
WTCHG_328669_223	6HLIGHT_RET_LEFT
WTCHG_328669_224	6HLIGHT_RET_RIGHT
WTCHG_328669_241	24HLIGHT_TEL_LEFT
WTCHG_328669_242	24HLIGHT_TEL_RIGHT
WTCHG_328669_243	24HLIGHT_RET_LEFT
WTCHG_328669_244	24HLIGHT_RET_RIGHT
WTCHG_328669_245	24HLIGHT_TEL_LEFT
WTCHG_328669_246	24HLIGHT_TEL_RIGHT
WTCHG_328669_247	24HLIGHT_RET_LEFT
WTCHG_328669_248	24HLIGHT_RET_RIGHT
WTCHG_328669_249	24HLIGHT_TEL_LEFT
WTCHG_328669_250	24HLIGHT_TEL_RIGHT
WTCHG_328669_273	DARK_TEL_LEFT
WTCHG_328669_274	DARK_TEL_RIGHT
WTCHG_328669_275	DARK_RET_LEFT
WTCHG_328669_276	DARK_RET_RIGHT
WTCHG_328669_277	DARK_TEL_LEFT
WTCHG_328669_278	DARK_TEL_RIGHT
WTCHG_328669_279	DARK_RET_LEFT
WTCHG_328669_280	DARK_RET_RIGHT
WTCHG_328669_289	6HLIGHT_TEL_LEFT
WTCHG_328669_290	6HLIGHT_TEL_RIGHT
WTCHG_328669_291	6HLIGHT_RET_LEFT
WTCHG_328669_292	6HLIGHT_RET_RIGHT
WTCHG_328669_293	6HLIGHT_TEL_LEFT
WTCHG_328669_294	6HLIGHT_TEL_RIGHT
WTCHG_328670_211	DARK_RET_LEFT
WTCHG_328670_212	DARK_RET_RIGHT
WTCHG_328670_213	DARK_TEL_LEFT
WTCHG_328670_214	DARK_TEL_RIGHT
WTCHG_328670_215	DARK_RET_LEFT
WTCHG_328670_216	DARK_RET_RIGHT
WTCHG_328670_217	DARK_TEL_LEFT
WTCHG_328670_218	DARK_TEL_RIGHT
WTCHG_328670_219	DARK_RET_LEFT
WTCHG_328670_220	DARK_RET_RIGHT
WTCHG_328670_233	6HLIGHT_TEL_LEFT
WTCHG_328670_234	6HLIGHT_TEL_RIGHT
WTCHG_328670_235	6HLIGHT_RET_LEFT
WTCHG_328670_236	6HLIGHT_RET_RIGHT
WTCHG_328670_237	6HLIGHT_TEL_LEFT
WTCHG_328670_238	6HLIGHT_TEL_RIGHT
WTCHG_328670_239	6HLIGHT_RET_LEFT
WTCHG_328670_240	6HLIGHT_RET_RIGHT
WTCHG_328670_251	24HLIGHT_RET_LEFT
WTCHG_328670_252	24HLIGHT_RET_RIGHT
WTCHG_328670_253	24HLIGHT_TEL_LEFT
WTCHG_328670_254	24HLIGHT_TEL_RIGHT
WTCHG_328670_255	24HLIGHT_RET_LEFT
WTCHG_328670_256	24HLIGHT_RET_RIGHT
WTCHG_328670_257	24HLIGHT_TEL_LEFT
WTCHG_328670_258	24HLIGHT_TEL_RIGHT
WTCHG_328670_259	24HLIGHT_RET_LEFT
WTCHG_328670_295	6HLIGHT_RET_LEFT
WTCHG_328670_296	6HLIGHT_RET_RIGHT
WTCHG_328670_301	24HLIGHT_RET_RIGHT""".split("\n")

# this is a simple lib name to actual exp name
next_batch = """WTCHG_320657_209 Sample:07A_DARK_TEL_LEFT Count:7625285
WTCHG_320657_210 Sample:07B_DARK_TEL_RIGHT Count:4415418
WTCHG_320657_221 Sample:22A_6HLIGHT_TEL_LEFT Count:4338214
WTCHG_320657_222 Sample:22B_6HLIGHT_TEL_RIGHT Count:13760693
WTCHG_320657_223 Sample:22C_6HLIGHT_RET_LEFT Count:15245663
WTCHG_320657_224 Sample:22D_6HLIGHT_RET_RIGHT Count:16974946
WTCHG_320657_241 Sample:42A_24HLIGHT_TEL_LEFT Count:18936238
WTCHG_320657_242 Sample:42B_24HLIGHT_TEL_RIGHT Count:20939992
WTCHG_320657_243 Sample:42C_24HLIGHT_RET_LEFT Count:12402424
WTCHG_320657_244 Sample:42D_24HLIGHT_RET_RIGHT Count:11014045
WTCHG_320657_245 Sample:44A_24HLIGHT_TEL_LEFT Count:12487312
WTCHG_320657_246 Sample:44B_24HLIGHT_TEL_RIGHT Count:4585774
WTCHG_320657_247 Sample:44C_24HLIGHT_RET_LEFT Count:7029931
WTCHG_320657_248 Sample:44D_24HLIGHT_RET_RIGHT Count:14529743
WTCHG_320657_249 Sample:49A_24HLIGHT_TEL_LEFT Count:8420795
WTCHG_320657_250 Sample:49B_24HLIGHT_TEL_RIGHT Count:15724788
WTCHG_320657_273 Sample:02A_DARK_TEL_LEFT Count:20550447
WTCHG_320657_274 Sample:02B_DARK_TEL_RIGHT Count:3697984
WTCHG_320657_275 Sample:02C_DARK_RET_LEFT Count:12814519
WTCHG_320657_276 Sample:02D_DARK_RET_RIGHT Count:16769306
WTCHG_320657_277 Sample:03A_DARK_TEL_LEFT Count:3648268
WTCHG_320657_278 Sample:03B_DARK_TEL_RIGHT Count:13452777
WTCHG_320657_279 Sample:03C_DARK_RET_LEFT Count:4131643
WTCHG_320657_280 Sample:03D_DARK_RET_RIGHT Count:18622792
WTCHG_320657_289 Sample:24A_6HLIGHT_TEL_LEFT Count:7402081
WTCHG_320657_290 Sample:24B_6HLIGHT_TEL_RIGHT Count:15722295
WTCHG_320657_291 Sample:24C_6HLIGHT_RET_LEFT Count:4509795
WTCHG_320657_292 Sample:24D_6HLIGHT_RET_RIGHT Count:17526731
WTCHG_320657_293 Sample:25A_6HLIGHT_TEL_LEFT Count:13617262
WTCHG_320657_294 Sample:25B_6HLIGHT_TEL_RIGHT Count:12226875
WTCHG_320658_211 Sample:07C_DARK_RET_LEFT Count:4731557
WTCHG_320658_212 Sample:07D_DARK_RET_RIGHT Count:4539664
WTCHG_320658_213 Sample:10A_DARK_TEL_LEFT Count:10827187
WTCHG_320658_214 Sample:10B_DARK_TEL_RIGHT Count:5186256
WTCHG_320658_215 Sample:10C_DARK_RET_LEFT Count:14175669
WTCHG_320658_216 Sample:10D_DARK_RET_RIGHT Count:17277003
WTCHG_320658_217 Sample:14A_DARK_TEL_LEFT Count:20473828
WTCHG_320658_218 Sample:14B_DARK_TEL_RIGHT Count:15284348
WTCHG_320658_219 Sample:14C_DARK_RET_LEFT Count:4771256
WTCHG_320658_220 Sample:14D_DARK_RET_RIGHT Count:5422399
WTCHG_320658_233 Sample:29A_6HLIGHT_TEL_LEFT Count:8229766
WTCHG_320658_234 Sample:29B_6HLIGHT_TEL_RIGHT Count:19762688
WTCHG_320658_235 Sample:29C_6HLIGHT_RET_LEFT Count:18631821
WTCHG_320658_236 Sample:29D_6HLIGHT_RET_RIGHT Count:9954987
WTCHG_320658_237 Sample:31A_6HLIGHT_TEL_LEFT Count:14340653
WTCHG_320658_238 Sample:31B_6HLIGHT_TEL_RIGHT Count:14312249
WTCHG_320658_239 Sample:31C_6HLIGHT_RET_LEFT Count:7280734
WTCHG_320658_240 Sample:31D_6HLIGHT_RET_RIGHT Count:7097969
WTCHG_320658_251 Sample:49C_24HLIGHT_RET_LEFT Count:4846115
WTCHG_320658_252 Sample:49D_24HLIGHT_RET_RIGHT Count:5333830
WTCHG_320658_253 Sample:50A_24HLIGHT_TEL_LEFT Count:23099691
WTCHG_320658_254 Sample:50B_24HLIGHT_TEL_RIGHT Count:18471329
WTCHG_320658_255 Sample:50C_24HLIGHT_RET_LEFT Count:5128954
WTCHG_320658_256 Sample:50D_24HLIGHT_RET_RIGHT Count:6241795
WTCHG_320658_257 Sample:54A_24HLIGHT_TEL_LEFT Count:24014950
WTCHG_320658_258 Sample:54B_24HLIGHT_TEL_RIGHT Count:4916560
WTCHG_320658_259 Sample:54C_24HLIGHT_RET_LEFT Count:10842295
WTCHG_320658_295 Sample:25C_6HLIGHT_RET_LEFT Count:20658370
WTCHG_320658_296 Sample:25D_6HLIGHT_RET_RIGHT Count:10942310
WTCHG_320658_301 Sample:54D_24HLIGHT_RET_RIGHT Count:11922712""".split("\n")



third_meta = """WTCHG_328669_209 Sample:07A_DARK_TEL_LEFT Count:6921213
WTCHG_328669_210 Sample:07B_DARK_TEL_RIGHT Count:4019341
WTCHG_328669_221 Sample:22A_6HLIGHT_TEL_LEFT Count:4004936
WTCHG_328669_222 Sample:22B_6HLIGHT_TEL_RIGHT Count:12728700
WTCHG_328669_223 Sample:22C_6HLIGHT_RET_LEFT Count:14060200
WTCHG_328669_224 Sample:22D_6HLIGHT_RET_RIGHT Count:15842389
WTCHG_328669_241 Sample:42A_24HLIGHT_TEL_LEFT Count:17379215
WTCHG_328669_242 Sample:42B_24HLIGHT_TEL_RIGHT Count:19239117
WTCHG_328669_243 Sample:42C_24HLIGHT_RET_LEFT Count:11350328
WTCHG_328669_244 Sample:42D_24HLIGHT_RET_RIGHT Count:10017003
WTCHG_328669_245 Sample:44A_24HLIGHT_TEL_LEFT Count:11485751
WTCHG_328669_246 Sample:44B_24HLIGHT_TEL_RIGHT Count:4245942
WTCHG_328669_247 Sample:44C_24HLIGHT_RET_LEFT Count:6415919
WTCHG_328669_248 Sample:44D_24HLIGHT_RET_RIGHT Count:13312943
WTCHG_328669_249 Sample:49A_24HLIGHT_TEL_LEFT Count:7824585
WTCHG_328669_250 Sample:49B_24HLIGHT_TEL_RIGHT Count:14705126
WTCHG_328669_273 Sample:02A_DARK_TEL_LEFT Count:18767526
WTCHG_328669_274 Sample:02B_DARK_TEL_RIGHT Count:3353362
WTCHG_328669_275 Sample:02C_DARK_RET_LEFT Count:11265358
WTCHG_328669_276 Sample:02D_DARK_RET_RIGHT Count:14875611
WTCHG_328669_277 Sample:03A_DARK_TEL_LEFT Count:3338442
WTCHG_328669_278 Sample:03B_DARK_TEL_RIGHT Count:12290015
WTCHG_328669_279 Sample:03C_DARK_RET_LEFT Count:3753295
WTCHG_328669_280 Sample:03D_DARK_RET_RIGHT Count:16741498
WTCHG_328669_289 Sample:24A_6HLIGHT_TEL_LEFT Count:6731848
WTCHG_328669_290 Sample:24B_6HLIGHT_TEL_RIGHT Count:14389416
WTCHG_328669_291 Sample:24C_6HLIGHT_RET_LEFT Count:4171235
WTCHG_328669_292 Sample:24D_6HLIGHT_RET_RIGHT Count:15825416
WTCHG_328669_293 Sample:25A_6HLIGHT_TEL_LEFT Count:12529431
WTCHG_328669_294 Sample:25B_6HLIGHT_TEL_RIGHT Count:11315392
WTCHG_328670_211 Sample:07C_DARK_RET_LEFT Count:4353541
WTCHG_328670_212 Sample:07D_DARK_RET_RIGHT Count:4325944
WTCHG_328670_213 Sample:10A_DARK_TEL_LEFT Count:10318631
WTCHG_328670_214 Sample:10B_DARK_TEL_RIGHT Count:4950807
WTCHG_328670_215 Sample:10C_DARK_RET_LEFT Count:13237564
WTCHG_328670_216 Sample:10D_DARK_RET_RIGHT Count:16354197
WTCHG_328670_217 Sample:14A_DARK_TEL_LEFT Count:19189283
WTCHG_328670_218 Sample:14B_DARK_TEL_RIGHT Count:14401929
WTCHG_328670_219 Sample:14C_DARK_RET_LEFT Count:4473086
WTCHG_328670_220 Sample:14D_DARK_RET_RIGHT Count:5078432
WTCHG_328670_233 Sample:29A_6HLIGHT_TEL_LEFT Count:7834320
WTCHG_328670_234 Sample:29B_6HLIGHT_TEL_RIGHT Count:18453221
WTCHG_328670_235 Sample:29C_6HLIGHT_RET_LEFT Count:17376052
WTCHG_328670_236 Sample:29D_6HLIGHT_RET_RIGHT Count:9388101
WTCHG_328670_237 Sample:31A_6HLIGHT_TEL_LEFT Count:13398756
WTCHG_328670_238 Sample:31B_6HLIGHT_TEL_RIGHT Count:13515330
WTCHG_328670_239 Sample:31C_6HLIGHT_RET_LEFT Count:6772601
WTCHG_328670_240 Sample:31D_6HLIGHT_RET_RIGHT Count:6723865
WTCHG_328670_251 Sample:49C_24HLIGHT_RET_LEFT Count:4590925
WTCHG_328670_252 Sample:49D_24HLIGHT_RET_RIGHT Count:5049950
WTCHG_328670_253 Sample:50A_24HLIGHT_TEL_LEFT Count:21780719
WTCHG_328670_254 Sample:50B_24HLIGHT_TEL_RIGHT Count:16920263
WTCHG_328670_255 Sample:50C_24HLIGHT_RET_LEFT Count:4791542
WTCHG_328670_256 Sample:50D_24HLIGHT_RET_RIGHT Count:5950143
WTCHG_328670_257 Sample:54A_24HLIGHT_TEL_LEFT Count:22089522
WTCHG_328670_258 Sample:54B_24HLIGHT_TEL_RIGHT Count:4620560
WTCHG_328670_259 Sample:54C_24HLIGHT_RET_LEFT Count:9967688
WTCHG_328670_295 Sample:25C_6HLIGHT_RET_LEFT Count:19304576
WTCHG_328670_296 Sample:25D_6HLIGHT_RET_RIGHT Count:10406265
WTCHG_328670_301 Sample:54D_24HLIGHT_RET_RIGHT Count:11198668""".split("\n")



lib_to_exp_dict = dict()
SAMPLE_DIC_COUNT = defaultdict(int)
name_set = set([])
##for i in sample_cond:
##    sample, condition = i.split()
##    sample = sample.rstrip()
##    condition = condition.split("_")[1:]
##    condition = "".join(condition)
##    if condition.startswith("LIGHT") or condition.startswith("DARK"):
##        SAMPLE_DIC_COUNT[condition] += 1
##        count = SAMPLE_DIC_COUNT[condition]
##        condition = condition + "_" + str(count)
##    if condition.startswith("6H"):
##        condition = condition[2:] + "_6H"
##        SAMPLE_DIC_COUNT[condition] += 1
##        count = SAMPLE_DIC_COUNT[condition]
##        condition = condition + "_" + str(count)
##    if condition.startswith("24H"):
##        condition = condition[3:] + "_24H"
##        SAMPLE_DIC_COUNT[condition] += 1
##        count = SAMPLE_DIC_COUNT[condition]
##        condition = condition + "_" + str(count)

        
    #lib_to_exp_dict[sample.rstrip()] = condition.rstrip()

for i in third_meta:
    sample, condition, count = i.split()
    sample = sample.rstrip()
    condition = condition.split("_")[1:]
    condition = "".join(condition)
    if condition.startswith("LIGHT") or condition.startswith("DARK"):
        SAMPLE_DIC_COUNT[condition] += 1
        count = SAMPLE_DIC_COUNT[condition]
        condition = condition + "_" + str(count)
    if condition.startswith("6H"):
        condition = condition[2:] + "_6H"
        SAMPLE_DIC_COUNT[condition] += 1
        count = SAMPLE_DIC_COUNT[condition]
        condition = condition + "_" + str(count)
    if condition.startswith("24H"):
        condition = condition[3:] + "_24H"
        SAMPLE_DIC_COUNT[condition] += 1
        count = SAMPLE_DIC_COUNT[condition]
        condition = condition + "_" + str(count)

        
    lib_to_exp_dict[sample.rstrip()] = condition.rstrip()

trin_path="/shelf/apps/pjt6/apps/trinityrnaseq-Trinity-v2.8.4/util/"
fasta = "/storage/home/users/pjt6/chicken_data/Gallus_gallus.GRCg6a.cds.all.fa"

# iterate through the file system
count = 0
exp_list = []
for filename in os.listdir(".") :
    if not filename.endswith(".gz") : continue
    if filename.endswith("_paired_R1.fq.gz"):
        count = count + 1
        prefix = filename.split("_paired_R1.fq.gz")[0]
        exp = lib_to_exp_dict[prefix]
        exp_list.append(exp)
        cmd = "%s/align_and_estimate_abundance.pl --transcripts %s  --est_method salmon  --seqType fq  --thread_count  16 --output_dir  %s --left  /storage/home/users/jw279/data/chickendata/thrid/%s_paired_R1.fq.gz --right /storage/home/users/jw279/data/chickendata/thrid/%s_paired_R2.fq.gz\n" %(trin_path, fasta, exp, prefix, prefix)
        if count == 1:
            cmd = cmd.rstrip() + "  --prep_reference \n"
        out.write(cmd)
exp_folder = ""
for i in exp_list:
    temp = i + "/quant.sf "
    exp_folder = exp_folder + temp
est_abun = "%sabundance_estimates_to_matrix.pl --est_method salmon --gene_trans_map  none --name_sample_by_basedir --out_prefix %s.genes.counts.matrix %s \n" % (trin_path, os.path.split(fasta)[-1], exp_folder)
out.write(est_abun)
out.close()