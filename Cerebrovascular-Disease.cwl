cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  intracranial-cerebrovascular-disease---primary:
    run: intracranial-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  traumatic-cerebrovascular-disease---primary:
    run: traumatic-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: intracranial-cerebrovascular-disease---primary/output
  subarachnoid-cerebrovascular-disease---primary:
    run: subarachnoid-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: traumatic-cerebrovascular-disease---primary/output
  cerebrovascular-disease-stenosis---primary:
    run: cerebrovascular-disease-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: subarachnoid-cerebrovascular-disease---primary/output
  cerebrovascular---primary:
    run: cerebrovascular---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-stenosis---primary/output
  intracerebral-cerebrovascular-disease---primary:
    run: intracerebral-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: cerebrovascular---primary/output
  cerebrovascular-disease-generalised---primary:
    run: cerebrovascular-disease-generalised---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: intracerebral-cerebrovascular-disease---primary/output
  cerebrovascular-disease-unspecified---primary:
    run: cerebrovascular-disease-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-generalised---primary/output
  right-cerebrovascular-disease---primary:
    run: right-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-unspecified---primary/output
  other-cerebrovascular-disease---primary:
    run: other-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: right-cerebrovascular-disease---primary/output
  arterial-cerebrovascular-disease---primary:
    run: arterial-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: other-cerebrovascular-disease---primary/output
  cerebrovascular-disease-communicating---primary:
    run: cerebrovascular-disease-communicating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: arterial-cerebrovascular-disease---primary/output
  cerebrovascular-disease-stroke---primary:
    run: cerebrovascular-disease-stroke---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-communicating---primary/output
  ischaemic-cerebrovascular-disease---primary:
    run: ischaemic-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-stroke---primary/output
  subdural-cerebrovascular-disease---primary:
    run: subdural-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ischaemic-cerebrovascular-disease---primary/output
  multiple-cerebrovascular-disease---primary:
    run: multiple-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: subdural-cerebrovascular-disease---primary/output
  cerebellar-cerebrovascular-disease---primary:
    run: cerebellar-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: multiple-cerebrovascular-disease---primary/output
  cerebrovascular-disease-lacunar---primary:
    run: cerebrovascular-disease-lacunar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: cerebellar-cerebrovascular-disease---primary/output
  precerebral-cerebrovascular-disease---primary:
    run: precerebral-cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-lacunar---primary/output
  cerebrovascular-disease-hemisphere---primary:
    run: cerebrovascular-disease-hemisphere---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: precerebral-cerebrovascular-disease---primary/output
  cerebrovascular-disease-sequelae---primary:
    run: cerebrovascular-disease-sequelae---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-hemisphere---primary/output
  cerebrovascular-disease---primary:
    run: cerebrovascular-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-sequelae---primary/output
  cerebrovascular-disease-middle---primary:
    run: cerebrovascular-disease-middle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease---primary/output
  cerebrovascular-disease-posterior---primary:
    run: cerebrovascular-disease-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-middle---primary/output
  cerebrovascular-disease-sided---primary:
    run: cerebrovascular-disease-sided---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-posterior---primary/output
  cerebrovascular-disease-anterior---primary:
    run: cerebrovascular-disease-anterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-sided---primary/output
  cerebrovascular-disease-brain---primary:
    run: cerebrovascular-disease-brain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-anterior---primary/output
  cerebrovascular-disease-syndrome---primary:
    run: cerebrovascular-disease-syndrome---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-brain---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: cerebrovascular-disease-syndrome---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
